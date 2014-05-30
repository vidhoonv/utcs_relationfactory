#!/bin/sh

corpuspath=/scratch/cluster/vidhoon/kbp/corpora/LDC2013/LDC2013E45_TAC_2013_KBP_Source_Corpus_disc_2
corpusdatapath="$corpuspath/data/English/"
corpusdoclistspath="$corpuspath/docs/doclists/eng_nw_doclist $corpuspath/docs/doclists/eng_wb_doclist $corpuspath/docs/doclists/eng_df_doclist"
indexname=LDC2013E45_TAC_2013

if [ -d "index" ];
	then echo "index exists!";
else $TAC_ROOT/components/bin/run.sh indexir.Indexing $corpusdatapath $indexname false "index";
fi

if [ -f "idfile_mapping" ];
	then echo "idfile_mapping exists!";
else $TAC_ROOT/components/bin/run.sh indexir.IdFileMapping "index" "idfile_mapping";
fi

cut -f1 "idfile_mapping" | sort > "idfile_mapping.sorted" && cat $corpusdoclistspath | sort > "corpusdoclists.sorted" &&\
diffcount=`diff idfile_mapping.sorted corpusdoclists.sorted | wc -l | cut -d' ' -f1`;\
if [ $diffcount -eq 0 ]; then echo "Indexing complete"; else echo "Not completed! $$diffcount differences found."; fi
rm idfile_mapping.sorted corpusdoclists.sorted
