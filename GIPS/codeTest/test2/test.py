from core.MV2 import MV2
from core.JIG import JIG
from core.SG2 import SG2
from core.AWL import AWL
import pandas as pd

def main(payload_path, signature_path, stopword_path, virtual_vector_path, big_group_path,
         window_size, K, M,  # MV2 파라미터
         thetaJ,  # JIG 파라미터
         vector_size, eps, minpts, ngram, hh1_size, hh2_size, ratio  # SG2, AWL 파라미터
         ):

    with open(payload_path, 'rb') as f:
        payloads_data = pd.read_csv(payload_path)

    payloads = [x for x in payloads_data['URL']]

    # 빅 그룹 식별
    minhashed_virtual_vectors = MV2(payloads=payloads, window_size=window_size, K=K, M=M)
    # with open(virtual_vector_path, 'wb') as f:
    #     pickle.dump(minhashed_virtual_vectors, f)

    big_group_indices = JIG(vectors=minhashed_virtual_vectors, thetaJ=thetaJ)
    print(len(big_group_indices))
    # with open(big_group_path, 'wb') as f:
    #     pickle.dump(big_group_indices, f)

    big_group_payloads = []
    non_big_group_paylaods = []

    for idx, payload in enumerate(payloads):
        if idx in big_group_indices:
            big_group_payloads.append(payload)
        else:
            non_big_group_paylaods.append(payload)

    # 시그니처 생성
    cluster_signatures = SG2(payloads=big_group_payloads, window_size=window_size,
                             vector_size=vector_size, eps=eps, minpts=minpts, ngram=ngram, 
                             hh1_size=hh1_size, hh2_size=hh2_size, ratio=ratio)
    stopwords = AWL(payloads=non_big_group_paylaods, ngram=ngram, hh1_size=hh1_size, hh2_size=hh2_size, ratio=ratio)

    print("===cluster_signatures===")
    print(cluster_signatures,'\n')
    print('===stopwords===')
    print(stopwords,'\n')
    # save results
    # with open(signature_path, 'wb') as f:
    #     pickle.dump(cluster_signatures, f)
    # with open(stopword_path, 'wb') as f:
    #     pickle.dump(stopwords, f)


if __name__ == '__main__':

    file_path = 'GIPS/weblog.csv'
    virtual_vector_path = './res/virtual_vector.pkl'
    big_group_indices_path = './res/big_group.pkl'
    signature_path = './res/signature.pkl'
    stopword_path = './res/stopword.pkl'

    K = 3
    M = 8
    thetaJ = 0.6

    window_size = 3
    vector_size = 64
    eps = 0.6
    minpts = 2
    ngram = 4
    hh1_size = 300
    hh2_size = 300
    ratio = 0.1

    main(payload_path=file_path, signature_path=signature_path, stopword_path=stopword_path,
         virtual_vector_path=virtual_vector_path, big_group_path=big_group_indices_path,
         window_size=window_size, vector_size=vector_size, K=K, M=M, thetaJ=thetaJ,
         eps=eps, minpts=minpts, ngram=ngram, hh1_size=hh2_size, hh2_size=hh2_size, ratio=ratio)
