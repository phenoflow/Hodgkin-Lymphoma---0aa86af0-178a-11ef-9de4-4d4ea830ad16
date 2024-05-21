# Kuan V, Denaxas S, Gonzalez-Izquierdo A, Direk K, Bhatti O, Husain S, Sutaria S, Hingorani M, Nitsch D, Parisinos C, Lumbers T, Mathur R, Sofat R, Casas JP, Wong I, Hemingway H, Hingorani A, 2024.

import sys, csv, re

codes = [{"code":"B61..11","system":"readv2"},{"code":"96183.0","system":"readv2"},{"code":"94407.0","system":"readv2"},{"code":"106597.0","system":"readv2"},{"code":"105841.0","system":"readv2"},{"code":"104895.0","system":"readv2"},{"code":"73532.0","system":"readv2"},{"code":"65584.0","system":"readv2"},{"code":"44196.0","system":"readv2"},{"code":"51285.0","system":"readv2"},{"code":"61997.0","system":"readv2"},{"code":"99012.0","system":"readv2"},{"code":"63625.0","system":"readv2"},{"code":"92245.0","system":"readv2"},{"code":"101715.0","system":"readv2"},{"code":"65483.0","system":"readv2"},{"code":"40508.0","system":"readv2"},{"code":"67703.0","system":"readv2"},{"code":"98909.0","system":"readv2"},{"code":"68039.0","system":"readv2"},{"code":"94005.0","system":"readv2"},{"code":"97863.0","system":"readv2"},{"code":"95338.0","system":"readv2"},{"code":"104484.0","system":"readv2"},{"code":"2462.0","system":"readv2"},{"code":"106911.0","system":"readv2"},{"code":"43415.0","system":"readv2"},{"code":"59755.0","system":"readv2"},{"code":"105472.0","system":"readv2"},{"code":"95049.0","system":"readv2"},{"code":"98840.0","system":"readv2"},{"code":"57225.0","system":"readv2"},{"code":"68330.0","system":"readv2"},{"code":"99200.0","system":"readv2"},{"code":"63054.0","system":"readv2"},{"code":"106349.0","system":"readv2"},{"code":"94279.0","system":"readv2"},{"code":"101530.0","system":"readv2"},{"code":"93951.0","system":"readv2"},{"code":"61662.0","system":"readv2"},{"code":"58684.0","system":"readv2"},{"code":"42198.0","system":"readv2"},{"code":"104743.0","system":"readv2"},{"code":"71142.0","system":"readv2"},{"code":"29876.0","system":"readv2"},{"code":"20710.0","system":"readv2"},{"code":"38939.0","system":"readv2"},{"code":"59778.0","system":"readv2"},{"code":"67506.0","system":"readv2"},{"code":"104291.0","system":"readv2"},{"code":"107032.0","system":"readv2"},{"code":"64343.0","system":"readv2"},{"code":"49605.0","system":"readv2"},{"code":"42769.0","system":"readv2"},{"code":"97746.0","system":"readv2"},{"code":"108775.0","system":"readv2"},{"code":"91900.0","system":"readv2"},{"code":"55303.0","system":"readv2"},{"code":"64036.0","system":"readv2"},{"code":"108886.0","system":"readv2"},{"code":"89230.0","system":"readv2"},{"code":"56041.0","system":"readv2"},{"code":"53397.0","system":"readv2"},{"code":"31741.0","system":"readv2"},{"code":"19140.0","system":"readv2"},{"code":"42461.0","system":"readv2"},{"code":"29178.0","system":"readv2"},{"code":"107804.0","system":"readv2"},{"code":"65489.0","system":"readv2"},{"code":"100423.0","system":"readv2"},{"code":"61149.0","system":"readv2"},{"code":"110563.0","system":"readv2"},{"code":"31537.0","system":"readv2"},{"code":"C81","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('hodgkin-lymphoma-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["hodgkin---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["hodgkin---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["hodgkin---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
