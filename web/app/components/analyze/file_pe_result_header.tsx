import {
  FilePeHeaderResultResponse,
  FilePeHeaderTableItem,
  FilePeHeaderTableItems2,
  FilePeHeaderTableItems3,
  FilePeHeaderTableItems4,
} from "@customTypes/analyze/file_pe_header";
import { Modal, Table, TableColumnsType } from "antd";
import { useState } from "react";

const FilePEHeaderResultCard = (props: {
  data: FilePeHeaderResultResponse;
}) => {
  const { output } = props.data;
  const [isModalOpen, setIsModalOpen] = useState(false);
  const [headerIdx, setHeaderIdx] = useState(0);

  if (!output) return <></>;

  const showModal = (headerDataIdx: number) => {
    setHeaderIdx(headerDataIdx);
    setIsModalOpen(true);
  };

  const handleCancel = () => {
    setIsModalOpen(false);
  };

  const columns: TableColumnsType<FilePeHeaderTableItem> = [
    {
      title: "번호",
      dataIndex: "idx",
      key: "idx",
      width: "10%",
    },
    {
      title: "이름",
      dataIndex: "key",
      key: "key",
      width: "50%",
    },
    {
      title: "값",
      dataIndex: "value",
      key: "value",
      width: "20%",
    },
    {
      title: "Readable Value",
      dataIndex: "value",
      key: "value",
      width: "20%",
    },
  ];

  const genModalTitle = (headerTypeNum: number) => {
    switch (headerTypeNum) {
      case 2: {
        return "COFF Header";
      }
      case 3: {
        return "Standad COFF Fields";
      }
      case 4: {
        return "Windows Specific Fields";
      }
      default:
        return " ";
    }
  };

  const genModalContent = (headerTypeNum: number) => {
    let dataSource: FilePeHeaderTableItem[] = [];
    switch (headerTypeNum) {
      case 2: {
        dataSource = FilePeHeaderTableItems2(props.data);
        break;
      }
      case 3: {
        dataSource = FilePeHeaderTableItems3(props.data);
        break;
      }
      case 4: {
        dataSource = FilePeHeaderTableItems4(props.data);
        break;
      }
    }
    return <Table dataSource={dataSource} columns={columns} />;
  };

  return (
    <div>
      <div className="grid w-full divide-y divide-neutral-500 overflow-x-scroll border-y border-neutral-700 lg:grid-cols-4">
        <div className="col-span-4 bg-emerald-100">
          <p className="text-center text-sm text-neutral-600">DOS HEADER</p>
        </div>

        <div className="col-span-4 bg-emerald-100">
          <p className="text-center text-sm text-neutral-600">DOS STUB</p>
        </div>

        <div
          className="col-span-4 grid cursor-pointer grid-cols-4 divide-y divide-neutral-500 bg-orange-100 hover:bg-orange-200"
          onClick={() => showModal(2)}
        >
          <div className="col-span-2">
            <p className="text-sm text-neutral-600">Signature 0x50450000</p>
          </div>
          <div className="col-span-1">
            <p className="text-sm text-neutral-600">Machine</p>
          </div>
          <div className="col-span-1">
            <p className="text-sm text-neutral-600">#NumberOfSections</p>
          </div>
          <div className="col-span-2">
            <p className="text-sm text-neutral-600">TimeDateStamp</p>
          </div>
          <div className="col-span-2">
            <p className="text-sm text-neutral-600">PointerToSymbolTable</p>
          </div>
          <div className="col-span-2">
            <p className="text-sm text-neutral-600"># NumberOfSymbolTable</p>
          </div>
          <div className="col-span-1">
            <p className="text-sm text-neutral-600">SizeOfOptionalHeader</p>
          </div>
          <div className="col-span-1">
            <p className="text-sm text-neutral-600">Characteristics</p>
          </div>
        </div>

        <div
          className="col-span-4 grid cursor-pointer grid-cols-4 divide-y divide-neutral-500 bg-cyan-100 hover:bg-cyan-200"
          onClick={() => showModal(3)}
        >
          <div className="col-span-1">
            <p className="text-sm text-neutral-600">Magic</p>
          </div>
          <div className="col-span-1">
            <p className="text-sm text-neutral-600">
              Major/MinorLinker Version
            </p>
          </div>
          <div className="col-span-2">
            <p className="text-sm text-neutral-600">SizeOfCode</p>
          </div>
          <div className="col-span-2">
            <p className="text-sm text-neutral-600">SizeOfInitializedData</p>
          </div>
          <div className="col-span-2">
            <p className="text-sm text-neutral-600">SizeOfUninitializedData</p>
          </div>
          <div className="col-span-2">
            <p className="text-sm text-neutral-600">AddressOfEntryPoint</p>
          </div>
          <div className="col-span-2">
            <p className="text-sm text-neutral-600">BaseOfCode</p>
          </div>
          <div className="col-span-2">
            <p className="text-sm text-neutral-600">BaseOfData</p>
          </div>
        </div>

        <div
          className="col-span-4 grid cursor-pointer grid-cols-4 divide-y divide-neutral-500 bg-amber-100 hover:bg-amber-200"
          onClick={() => showModal(4)}
        >
          <div className="col-span-2 col-start-3">
            <p className="text-sm text-neutral-600">ImageBase</p>
          </div>
          <div className="col-span-2">
            <p className="text-sm text-neutral-600">SectionAlignment</p>
          </div>
          <div className="col-span-2">
            <p className="text-sm text-neutral-600">FileAlignment</p>
          </div>
          <div className="col-span-1">
            <p className="text-sm text-neutral-600">MajorOSVersion</p>
          </div>
          <div className="col-span-1">
            <p className="text-sm text-neutral-600">MinorOSVersion</p>
          </div>
          <div className="col-span-1">
            <p className="text-sm text-neutral-600">MajorImageVersion</p>
          </div>
          <div className="col-span-1">
            <p className="text-sm text-neutral-600">MinorImageVersion</p>
          </div>
          <div className="col-span-1">
            <p className="text-sm text-neutral-600">MajorSubsystemVersion</p>
          </div>
          <div className="col-span-1">
            <p className="text-sm text-neutral-600">MinorSubsystemVersion</p>
          </div>
          <div className="col-span-2">
            <p className="text-sm text-neutral-600">Win32VersionValue</p>
          </div>
          <div className="col-span-2">
            <p className="text-sm text-neutral-600">SizeOfImage</p>
          </div>
          <div className="col-span-2">
            <p className="text-sm text-neutral-600">SizeOfHeaders</p>
          </div>
          <div className="col-span-2">
            <p className="text-sm text-neutral-600">CheckSum</p>
          </div>
          <div className="col-span-1">
            <p className="text-sm text-neutral-600">Subsystem</p>
          </div>
          <div className="col-span-1">
            <p className="text-sm text-neutral-600">DllCharacteristics</p>
          </div>
          <div className="col-span-2">
            <p className="text-sm text-neutral-600">SizeOfStackReserve</p>
          </div>
          <div className="col-span-2">
            <p className="text-sm text-neutral-600">SizeOfStackCommit</p>
          </div>
          <div className="col-span-2">
            <p className="text-sm text-neutral-600">SizeOfHeapReserve</p>
          </div>
          <div className="col-span-2">
            <p className="text-sm text-neutral-600">SizeOfHeapCommit</p>
          </div>
          <div className="col-span-2">
            <p className="text-sm text-neutral-600">LoaderFlags</p>
          </div>
          <div className="col-span-2">
            <p className="text-sm text-neutral-600">#NumberOfRvaAndSizes</p>
          </div>
        </div>

        <div className="col-span-4 bg-violet-100">
          <p className="text-center text-sm text-neutral-600">
            Optional Header
          </p>
        </div>
        <div className="col-span-2 bg-violet-100">
          <p className="text-sm text-neutral-600">ExportTable</p>
        </div>
        <div className="col-span-2 bg-violet-100">
          <p className="text-sm text-neutral-600">SizeOfExportTable</p>
        </div>
        <div className="col-span-2 bg-violet-100">
          <p className="text-sm text-neutral-600">ImportTable</p>
        </div>
        <div className="col-span-2 bg-violet-100">
          <p className="text-sm text-neutral-600">SizeOfImportTable</p>
        </div>
        <div className="col-span-2 bg-violet-100">
          <p className="text-sm text-neutral-600">ResourceTable</p>
        </div>
        <div className="col-span-2 bg-violet-100">
          <p className="text-sm text-neutral-600">SizeOfResourceTable</p>
        </div>
        <div className="col-span-2 bg-violet-100">
          <p className="text-sm text-neutral-600">ExceptionTable</p>
        </div>
        <div className="col-span-2 bg-violet-100">
          <p className="text-sm text-neutral-600">SizeOfExceptionTable</p>
        </div>
        <div className="col-span-2 bg-violet-100">
          <p className="text-sm text-neutral-600">CertificateTable</p>
        </div>
        <div className="col-span-2 bg-violet-100">
          <p className="text-sm text-neutral-600">SizeOfCertificateTable</p>
        </div>
        <div className="col-span-2 bg-violet-100">
          <p className="text-sm text-neutral-600">BaseRelocationTable</p>
        </div>
        <div className="col-span-2 bg-violet-100">
          <p className="text-sm text-neutral-600">SizeOfBaseRelocationTable</p>
        </div>
        <div className="col-span-2 bg-violet-100">
          <p className="text-sm text-neutral-600">Debug</p>
        </div>
        <div className="col-span-2 bg-violet-100">
          <p className="text-sm text-neutral-600">SizeOfDebug</p>
        </div>
        <div className="col-span-2 bg-violet-100">
          <p className="text-sm text-neutral-600">GlobalPtr</p>
        </div>
        <div className="col-span-1 bg-violet-100">
          <p className="text-sm text-neutral-600">0000</p>
        </div>
        <div className="col-span-1 bg-violet-100">
          <p className="text-sm text-neutral-600">0000</p>
        </div>
        <div className="col-span-2 bg-violet-100">
          <p className="text-sm text-neutral-600">TLSTable</p>
        </div>
        <div className="col-span-2 bg-violet-100">
          <p className="text-sm text-neutral-600">SizeOfTLSTable</p>
        </div>
        <div className="col-span-2 bg-violet-100">
          <p className="text-sm text-neutral-600">LoadConfigTable</p>
        </div>
        <div className="col-span-2 bg-violet-100">
          <p className="text-sm text-neutral-600">SizeOfLoadConfigTable</p>
        </div>
        <div className="col-span-2 bg-violet-100">
          <p className="text-sm text-neutral-600">BoundImport</p>
        </div>
        <div className="col-span-2 bg-violet-100">
          <p className="text-sm text-neutral-600">SizeOfBoundImport</p>
        </div>
        <div className="col-span-2 bg-violet-100">
          <p className="text-sm text-neutral-600">ImportAddressTable</p>
        </div>
        <div className="col-span-2 bg-violet-100">
          <p className="text-sm text-neutral-600">SizeOfImportAddressTable</p>
        </div>
        <div className="col-span-2 bg-violet-100">
          <p className="text-sm text-neutral-600">DelayImportDescriptor</p>
        </div>
        <div className="col-span-2 bg-violet-100">
          <p className="text-sm text-neutral-600">
            SizeOfDelayImportDescriptor
          </p>
        </div>
        <div className="col-span-2 bg-violet-100">
          <p className="text-sm text-neutral-600">CLRRuntimeHeader</p>
        </div>
        <div className="col-span-2 bg-violet-100">
          <p className="text-sm text-neutral-600">SizeOfCLRRuntimeHeader</p>
        </div>
        <div className="col-span-1 bg-violet-100">
          <p className="text-sm text-neutral-600">0000</p>
        </div>
        <div className="col-span-1 bg-violet-100">
          <p className="text-sm text-neutral-600">0000</p>
        </div>
        <div className="col-span-1 bg-violet-100">
          <p className="text-sm text-neutral-600">0000</p>
        </div>
        <div className="col-span-1 bg-violet-100">
          <p className="text-sm text-neutral-600">0000</p>
        </div>

        <div className="col-span-4 bg-lime-100">
          <p className="text-sm text-neutral-600">Section Table Name</p>
        </div>
        <div className="col-span-2 bg-lime-100">
          <p className="text-sm text-neutral-600">VirtualSize</p>
        </div>
        <div className="col-span-2 bg-lime-100">
          <p className="text-sm text-neutral-600">VirtualAddress</p>
        </div>
        <div className="col-span-2 bg-lime-100">
          <p className="text-sm text-neutral-600">SizeOfRawData</p>
        </div>
        <div className="col-span-2 bg-lime-100">
          <p className="text-sm text-neutral-600">PointerToRawData</p>
        </div>
        <div className="col-span-2 bg-lime-100">
          <p className="text-sm text-neutral-600">PointerToRelocations</p>
        </div>
        <div className="col-span-2 bg-lime-100">
          <p className="text-sm text-neutral-600">PointerToLinenumbers</p>
        </div>
        <div className="col-span-1 bg-lime-100">
          <p className="text-sm text-neutral-600">NumberOfRelocations</p>
        </div>
        <div className="col-span-1 bg-lime-100">
          <p className="text-sm text-neutral-600">NumberOfLinenumbers</p>
        </div>
        <div className="col-span-2 bg-lime-100">
          <p className="text-sm text-neutral-600">Characteristics</p>
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
    </div>
  );
};

export default FilePEHeaderResultCard;
