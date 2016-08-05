echo "Pushing develop"
git push
echo "Merging develop --> master"
git checkout master
git merge develop
echo "Pushing master"
git push
echo "Switching back to develop"
git checkout develop
echo "All done"
echo "Do you wish to build a release?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) sh build.sh; break;;
        No ) exit;;
    esac
done
