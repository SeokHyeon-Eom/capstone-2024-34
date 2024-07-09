import { GenYaraRulePeFilesUploadResponse } from "@customTypes/generate/api";
import { YaraTokenizerConf } from "@customTypes/yara/monaco_editor";
import dynamic from "next/dynamic";
import { useState } from "react";
import { Modal, Table, TableColumnsType } from "antd";
import WordCloud from "@components/dashboard/wordcloud";
import { monaco } from "react-monaco-editor";
import {
  FileSigResultTable,
} from "@customTypes/apply/sig";

const MonacoEditor = dynamic(() => import("react-monaco-editor"), {
  ssr: false,
});

const AutoGenYaraRuleResultCard = ({
  success,
  message,
  data_uploader,
  data_yara,
  isProgress,
}: GenYaraRulePeFilesUploadResponse & { isProgress: boolean }) => {
  const [fileIdx, setFileIdx] = useState(0);
  const [isModalOpen, setIsModalOpen] = useState(false);
  const [headerIdx, setHeaderIdx] = useState(0);

  const showModal = (headerDataIdx: number) => {
    setHeaderIdx(headerDataIdx);
    setIsModalOpen(true);
  };

  const handleCancel = () => {
    setIsModalOpen(false);
  };
  const columns: TableColumnsType<FileSigResultTable> = [
    {
      title: "번호",
      dataIndex: "idx",
      key: "idx",
      width: "10%",
    },
    {
      title: "파일",
      dataIndex: "key",
      key: "key",
      width: "80%",
    },
  ];

  const genModalTitle = (headerTypeNum: number) => {
    if(data_yara != undefined)
    {
      const leng = data_yara?.cluster_file[headerTypeNum] !== undefined ? data_yara?.cluster_file[headerTypeNum].length : 0
      return `파일 개수: ${leng}`
    }
  };
  const genModalContent = (headerTypeNum: number) => {
    let dataSource: FileSigResultTable[] = [];
    
    if(data_yara?.cluster_file != undefined)
    {
      if(data_yara?.cluster_file.length === 0)
          return
      for(let i = 0; i < data_yara?.cluster_file[headerTypeNum].length; i++)
      {
        const tmp: FileSigResultTable = {
          idx: i + 1,
          key: data_yara?.cluster_file[headerTypeNum][i]
        };
        dataSource.push(tmp);
      }
      return <Table dataSource={dataSource} columns={columns} />;
    }
    else
      return;
  };


  const [clusterPage, setClusterPage] = useState<boolean>(false);

  const handleDownload = (ruleString: string) => {
    // 입력된 텍스트를 Blob 객체로 변환
    const blob = new Blob([ruleString], { type: "text/plain" });
    // Blob 객체를 URL.createObjectURL을 사용하여 다운로드할 수 있는 URL로 변환
    const url =
      typeof window != undefined ? window.URL.createObjectURL(blob) : "";

    // a 태그를 동적으로 생성하여 다운로드 링크 생성
    const link = document.createElement("a");
    link.href = url;
    link.download = "yara_rule.yar"; // 다운로드되는 파일명
    document.body.appendChild(link);

    // a 태그를 클릭하여 다운로드 시작
    link.click();

    // 다운로드 후 a 태그 제거
    document.body.removeChild(link);
  };

  return (
    <>
      {isProgress ? (
        <div className="focus:ring-brand-300 flex min-h-96 w-full max-w-full flex-col items-center justify-center rounded-xl border border-gray-200 bg-white p-4 shadow-sm focus:outline-none focus:ring-4 md:p-5">
          <div role="status">
            <svg
              aria-hidden="true"
              className="h-8 w-8 animate-spin fill-blue-600 text-gray-200"
              viewBox="0 0 100 101"
              fill="none"
              xmlns="http://www.w3.org/2000/svg"
            >
              <path
                d="M100 50.5908C100 78.2051 77.6142 100.591 50 100.591C22.3858 100.591 0 78.2051 0 50.5908C0 22.9766 22.3858 0.59082 50 0.59082C77.6142 0.59082 100 22.9766 100 50.5908ZM9.08144 50.5908C9.08144 73.1895 27.4013 91.5094 50 91.5094C72.5987 91.5094 90.9186 73.1895 90.9186 50.5908C90.9186 27.9921 72.5987 9.67226 50 9.67226C27.4013 9.67226 9.08144 27.9921 9.08144 50.5908Z"
                fill="currentColor"
              />
              <path
                d="M93.9676 39.0409C96.393 38.4038 97.8624 35.9116 97.0079 33.5539C95.2932 28.8227 92.871 24.3692 89.8167 20.348C85.8452 15.1192 80.8826 10.7238 75.2124 7.41289C69.5422 4.10194 63.2754 1.94025 56.7698 1.05124C51.7666 0.367541 46.6976 0.446843 41.7345 1.27873C39.2613 1.69328 37.813 4.19778 38.4501 6.62326C39.0873 9.04874 41.5694 10.4717 44.0505 10.1071C47.8511 9.54855 51.7191 9.52689 55.5402 10.0491C60.8642 10.7766 65.9928 12.5457 70.6331 15.2552C75.2735 17.9648 79.3347 21.5619 82.5849 25.841C84.9175 28.9121 86.7997 32.2913 88.1811 35.8758C89.083 38.2158 91.5421 39.6781 93.9676 39.0409Z"
                fill="currentFill"
              />
            </svg>
            <span className="sr-only">Loading...</span>
          </div>
          <div>
            <div className="mt-2 text-center text-neutral-400">파일 분석중</div>
            <div className="text-center text-neutral-400">
              파일에 따라 시간이 소요될 수 있습니다...
            </div>
          </div>
        </div>
      ) : (
        <>
          {success === true ? ( 
            clusterPage === false ?
            <div className="mt-5 grid h-full w-full max-w-full gap-4 rounded-xl sm:gap-6 xl:min-h-80 xl:grid-cols-3">
              <div className="flex h-full max-w-full flex-col overflow-hidden rounded-xl border border-gray-200 bg-white shadow-sm col-span-1">
                <div className="border-b border-gray-200 px-4 py-4">
                  <h2 className="text-lg font-semibold text-gray-800">Cluster 선택</h2>
                  <p className="text-sm font-semibold text-blue-800">(시그니처추출의 실패할 수 있음)</p>
                </div>
                <div className="h-full w-full">
                <div
                    id="basic-tabs-1"
                    className="h-full px-4"
                    role="tabpanel"
                    aria-labelledby="basic-tabs-item-1"
                  >
                  {data_yara?.cluster_file.length == 0 ? <div>시그니처 추출 실패</div>:data_yara?.cluster_file.map((_, idx) => (
                    <div
                      key={`li_${idx}`}
                      className="gap-x-2 border-b border-gray-200 bg-white px-1 py-3 text-m font-medium text-neutral-800 first:border-t-0 last:border-b-0"
                    >
                      <div className="relative flex h-full w-full items-center">
                        <div className="flex" onClick={() =>(setFileIdx(idx))}>
                        <input
                            id={`hs-list-group-item-radio-${idx}`}
                            name="hs-list-group-item-radio"
                            type="radio"
                            className="rounded-full border-gray-200 disabled:opacity-50"
                          />
                        
                        </div>
                        <label
                          htmlFor={`hs-list-group-item-radio-${idx}`}
                          className="ms-3 block w-full text-m text-gray-600"
                        >
                        <div>{idx}: Cluster</div>
                      </label>
                    </div>  
                  </div>
                    ))
                  }  
                  </div>
                </div>
              </div>
              <div className="flex h-full max-w-full flex-col overflow-hidden rounded-xl border border-gray-200 bg-white shadow-sm col-span-2" >
                <div className="border-b border-gray-200 px-4 py-4">
                  <h2 className="text-lg font-semibold text-gray-800 cursor-pointer" onClick={data_yara?.cluster_file.length == 0 ? () => {}:() => showModal(fileIdx)}> 
                    {data_yara?.cluster_file.length == 0 ? '시그니처 추출에 실패했습니다' : `${data_yara?.cluster_file[fileIdx].length}개의 파일` }
                    <p className="text-sm font-semibold text-blue-800">(클릭 시 클러스터 안의 파일 확인 가능)</p>
                  </h2>
                </div>
                <div>
                  {data_yara?.cluster_sig.length === 0 ? '시그니처 추출 실패' : 
                  <div className="gap-1 px-4 py-2">
                    <p className="text-sm font-semibold text-black-800">(시그니처 일부)</p>
                    <div className="inline-flex flex-wrap gap-1 max-h-96 overflow-auto max-w-full">
                      {data_yara?.cluster_sig[fileIdx].map((item, idx) => (
                      <p key={idx} className="inline-flex items-center gap-x-1.5 rounded-lg bg-neutral-100 px-3 py-1.5 text-m font-medium text-blue-800">
                        {item}
                      </p>
                    ))}
                  </div>
                  </div>}
                </div>
              </div>
              <Modal
                title={genModalTitle(headerIdx)}
                open={isModalOpen}
                onCancel={handleCancel}
                footer={null}
                width={800}
              >
                <div className="text-lg">
                  <div>{genModalContent(headerIdx)}</div>
                </div>
              </Modal>
              <button
                type="button"
                className="inline-flex items-center gap-x-1 rounded-lg border border-transparent bg-blue-600 px-3 py-2 text-sm font-semibold text-white hover:bg-blue-700 disabled:pointer-events-none disabled:opacity-50 w-20 h-10" 
                onClick={() => setClusterPage(true)}
              >
                다음
                <svg
                  className="size-4 flex-shrink-0"
                  xmlns="http://www.w3.org/2000/svg"
                  width="24"
                  height="24"
                  viewBox="0 0 24 24"
                  fill="none"
                  stroke="currentColor"
                  strokeWidth="2"
                  strokeLinecap="round"
                  strokeLinejoin="round"
                >
                  <path d="m9 18 6-6-6-6"></path>
                </svg>
              </button>
            </div>   
             : 
            <div className="grid w-full max-w-full gap-4 sm:gap-6 lg:grid-cols-3">
              {/* <div className="w-full overflow-hidden rounded-xl border border-gray-200 bg-white shadow-sm lg:col-span-3">
                <div className="border-b border-gray-200 px-4 py-4">
                  <h2 className="text-lg font-semibold text-gray-800">
                    Yara Rule 생성 시그니처: {data_yara?.extractSignature.length}개
                  </h2>
                </div>
                <div className="inline-flex flex-wrap gap-1 p-4 max-h-96 overflow-auto max-w-full">
                  {data_yara?.extractSignature.map((item, idx) => (
                      <p key={idx} className="inline-flex items-center gap-x-1.5 rounded-lg bg-neutral-100 px-3 py-1.5 text-m font-medium text-blue-800">
                        {item}
                      </p>
                  ))}
                </div>
              </div> */}
              <div className="max-w-full overflow-hidden rounded-xl border border-gray-200 bg-white shadow-sm lg:col-span-3">
                <div className="flex border-b border-gray-200 px-4 py-4">
                  <h2 className="flex-1 text-lg font-semibold text-gray-800">
                    자동 생성 탐지 Yara Rule <p className="text-sm font-semibold text-blue-800">(총 시그니처개수: {data_yara?.extractSignature.length}개)</p>
                  </h2>
                </div>
                <div className="flex w-full justify-end bg-neutral-50 px-4 py-2">
                  <button
                    type="button"
                    className="inline-flex items-center gap-x-2 rounded-lg border border-transparent bg-gray-100 px-4 py-2 text-sm font-semibold text-gray-800 hover:bg-gray-200 disabled:pointer-events-none disabled:opacity-50"
                    onClick={() => {
                      handleDownload(data_yara?.rule || "");
                    }}
                  >
                    Yar 파일 다운로드
                  </button>
                </div>
                <MonacoEditor
                  height="600"
                  value={data_yara?.rule}
                  language="yara"
                  theme="vs"
                  editorWillMount={(monaco) => {
                    monaco.languages.register({ id: "yara" });
                    monaco.languages.setMonarchTokensProvider(
                      "yara",
                      YaraTokenizerConf as any,
                    );
                  }}
                  options={{
                    fontSize: 14,
                    wordWrap: "on",
                    minimap: { enabled: false },
                  }}
                />
              </div>
              <button
                type="button"
                className="inline-flex items-center gap-x-1 rounded-lg border border-gray-200 bg-white px-3 py-2 text-sm font-medium text-gray-800 shadow-sm hover:bg-gray-50 disabled:pointer-events-none disabled:opacity-50 w-20 h-10"
                onClick={() => setClusterPage(false)}
              >
                <svg
                  className="size-4 flex-shrink-0"
                  xmlns="http://www.w3.org/2000/svg"
                  width="24"
                  height="24"
                  viewBox="0 0 24 24"
                  fill="none"
                  stroke="currentColor"
                  strokeWidth="2"
                  strokeLinecap="round"
                  strokeLinejoin="round"
                >
                  <path d="m15 18-6-6 6-6"></path>
                </svg>
                이전
              </button>
            </div>
          )
          
          : (
            <></>
          )}
        </>
      )}
    </>
  );
};

export default AutoGenYaraRuleResultCard;
