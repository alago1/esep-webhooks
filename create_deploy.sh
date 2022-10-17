if test -f "./deployment-package.zip"; then
    rm ./deployment-package.zip
fi


cd package && zip -r ../deployment-package.zip .
cd .. && zip -g deployment-package.zip handler.py

aws lambda update-function-code --function-name esep-webhook --zip-file fileb://deployment-package.zip