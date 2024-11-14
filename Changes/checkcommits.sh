#FILE		:Check commits
#USAGE		:The Script checks thew new commit
#AUTHOR		: --- 
#EMAIL		:
#VERSION	:1.0

trigran-$1
releaseVersion-$2
tag-$3

checkCommits(){
	1f [[ $tag == "0" ]]; then
	#letestTa=$(git tag -1 v${releaseVersion)* | awk -F".""{print $NF}' | sort -rV | head -1)
	latestTag=$(git tag -1 --sort=-version:refname "v${releaseVersion)*" | head -1)
	finalTag=${latestTag}
	else
	FinalTAg="v"$tag
	fi
	echo "['date'] $|||||{trigram} Commit Inspection Started..."
	echo "['date'] Getting files from Latest Tag ${finalTag}.."
	git diff --name-only ${finalTag}..HEAD >> commits.info
	git 1og --pretty=format:" %ci; | %cn; I %s" $(finalTag)..HEAD >> messages.info

	if [[ -f commits.info ]]; then
		echo "[INFO] ${triagram} Commits Present..."
	fi
	sort commits.info -o commits.info
}

check commits


echo ""
echo ""
echo ""

echo "===================================================================" >> report.info
echo " Deployment report" >> report.info
echo "===================================================================" >> report.info
echo "['date'] List of Objects to be Delivered" >> report.info
echo "---------------------------------------------------------------------" >> report.info




