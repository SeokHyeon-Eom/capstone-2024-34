import { ApplyYaraPythonAPIResponse } from "@customTypes/apply/api";
import { Modal, Table, TableColumnsType } from "antd";
import { useState } from "react";
import {
  FileSigResultTable,
} from "@customTypes/apply/sig";

interface ApplyRuleYaraResultCardProps {
  data_apply_yara: ApplyYaraPythonAPIResponse | undefined;
}

const ApplyRuleYaraResultCard = ({
  data_apply_yara,
}: ApplyRuleYaraResultCardProps) => {
  const unmatchedFiles = data_apply_yara?.output.data.filter(
    (item) => !item.match,
  );
  const matchedFiles = data_apply_yara?.output.data.filter(
    (item) => item.match,
  );

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
      title: "시그니처",
      dataIndex: "key",
      key: "key",
      width: "80%",
    },
  ];

  const genModalTitle = (headerTypeNum: number) => {
    if(matchedFiles != undefined)
    {
      const leng = matchedFiles[headerTypeNum] !== undefined ? matchedFiles[headerTypeNum].sig.length : 0
      return `시그니처의 총 개수: ${leng}`
    }
  };

  const genModalContent = (headerTypeNum: number) => {
    let dataSource: FileSigResultTable[] = [];
    
    if(matchedFiles != undefined && matchedFiles[headerTypeNum] !== undefined)
    {
      const signatures = matchedFiles[headerTypeNum].sig
      for(let i = 0; i < signatures.length; i++)
      {
        const tmp: FileSigResultTable = {
          idx: i + 1,
          key: signatures[i]
        };
        dataSource.push(tmp);
      }
      return <Table dataSource={dataSource} columns={columns} />;
    }
    else
      return;
  };

  const totalFiles = data_apply_yara?.output.data.length;
  return (
    <div className="grid min-h-72 w-full max-w-full gap-4 rounded-xl sm:gap-6 xl:grid-cols-2">
      <div className="xl:col-span-2">
        <div className="flex h-full max-w-full flex-col overflow-hidden rounded-xl border border-gray-200 bg-white shadow-sm">
          <div className="border-b border-gray-200 px-4 py-4">
            <h2 className="text-lg font-semibold text-gray-800">
              전체 검사 대상파일
            </h2>
          </div>
          <div className="flex w-full flex-1 flex-col items-start justify-start p-4">
            {totalFiles}개
          </div>
        </div>
      </div>

      <div>
        <div className="flex h-full max-w-full flex-col overflow-hidden rounded-xl border border-gray-200 bg-white shadow-sm">
          <div className="border-b border-gray-200 px-4 py-4">
            <h2 className="text-lg font-semibold text-gray-800">매치된 파일<p className="text-sm font-semibold text-blue-800">(파일 클릭 시 시그니처 확인 가능)</p>
            </h2>
          </div>
          <div className="flex w-full flex-1 flex-col items-start justify-start p-4">
            {matchedFiles?.map((item, idx) => (
              <div key={item.id} onClick={() => showModal(idx)} className="cursor-pointer">
                <p className="mb-2">{item.filename}</p>
              </div>
            ))}
          </div>
        </div>
      </div>

      <div>
        <div className="flex h-full max-w-full flex-col overflow-hidden rounded-xl border border-gray-200 bg-white shadow-sm">
          <div className="border-b border-gray-200 px-4 py-4">
            <h2 className="text-lg font-semibold text-gray-800">
              매치되지 않은 파일
            </h2>
          </div>
          <div className="flex w-full flex-1 flex-col items-start justify-start p-4">
            {unmatchedFiles?.map((item) => (
              <div key={item.id}>
                <p className="mb-2">{item.filename}</p>
              </div>
            ))}
          </div>
        </div>
      </div>

      <Modal
        title={genModalTitle(headerIdx)}
        open={isModalOpen}
        onCancel={handleCancel}
        footer={null}
        width={1000}
      >
        <div className="text-lg">
          <div>{genModalContent(headerIdx)}</div>
        </div>
      </Modal>
    </div>
  );
};

export default ApplyRuleYaraResultCard;
