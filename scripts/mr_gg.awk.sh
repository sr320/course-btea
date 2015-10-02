#!/usr/bin/awk -f

BEGIN{ print "chr.Base\tchr\tbase\tstrand\tcoverage\tfreqC\tfreqT" }
{
	if ($3 == "+") {
		strand="F"
 	} else {
		strand="R"
	}

	FC=($7/$8)*100
	FT=(1-($7/$8))*100
	chrbase=$1"."$2
	printf "%s\t%s\t%s\t%s\t%d\t%.2f\t%.2f\n",
		chrbase, $1, $2, strand, $8, FC, FT
}
