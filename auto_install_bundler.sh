hash bundle &> /dev/null #pipe the output to /dev/null so it doesn't spam the console. We only care if bundler isn't installed
if [ $? -eq 1 ]; then #1 means that an error occurred. In this case, bundler isn't installed.
    echo >&2 "Bundler wasn't found. Installing..."
    gem install bundler #don't want to install bundler automatically but just get a warning? Comment out this line.
fi