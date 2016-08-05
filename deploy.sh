echo "Pushing develop"
git push
sleep 5
echo "Merging develop --> master"
git checkout master
sleep 1
git merge develop
echo "Pushing master"
sleep 1
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
