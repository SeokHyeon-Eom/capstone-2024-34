import { spawn } from "child_process";
import { NextResponse } from "next/server";
import { join } from "path";
import os from "os";
import fs from "fs";
import { promisify } from "util";

export async function POST(req: Request) {
  const body = await req.json();
  console.log("POST body:", body);

  // 파이썬 실행 커맨드
  const pythonCommand = os.platform() === "win32" ? "python" : "python3";

  // 파이썬 파일 경로
  const extractorLibPath = join(process.cwd(), "/app/libs/yara/yara_detect.py");

  // 분석 대상 폴더 경로
  const targetFolderPath = join(
    process.cwd(),
    `/public/uploads/${body.folderPath}`,
  );

  // Yara룰 파일 생성
  const yaraFilePath = join(targetFolderPath, "upload_yara_rule.yar");
  const writeFileAsync = promisify(fs.writeFile);
  await writeFileAsync(yaraFilePath, `${body.yara}`);

  // 파이썬 프로세스 실행 -> Promise 처리
  const processDataPromise = new Promise((resolve, reject) => {
    const pythonProcess = spawn(pythonCommand, [
      extractorLibPath,
      targetFolderPath,
      yaraFilePath,
    ]);
    let output = "";
    console.log(targetFolderPath, yaraFilePath);
    // 파이썬 프로세스 정상 처리
    pythonProcess.stdout.on("data", (data) => {
      output += data.toString();
      console.log("파이썬 프로세스 정상수행");
    });

    // 파이썬 프로세스 오류 처리
    pythonProcess.stderr.on("data", (data) => {
      console.error("파이썬 프로세스 실행 중 오류 발생:", data.toString());
      reject(data.toString());
    });

    // 파이썬 프로세스 종료 핸들링
    pythonProcess.on("close", (code) => {
      if (code === 0) {
        console.log("파이썬 정상 종료!");
        let parsedData = JSON.parse(output);
        resolve(parsedData);
      } else {
        console.error(`파이썬 프로세스 비정상 종료! 코드: ${code}`);
        reject(`파이썬 프로세스 비정상 종료`);
      }
    });
  });

  try {
    // Promise 처리 결과 대기후 반환
    const promiseData = await processDataPromise;
    console.log("파이썬 프로세스 결과 정상 수신");
    console.log(promiseData);
    return NextResponse.json({ output: promiseData }, { status: 200 });
  } catch (error) {
    // 에러 핸들링
    console.error("파이썬 프로세스 실행 중 오류 발생:", error);
    return NextResponse.json({ output: error }, { status: 500 });
  }
}
