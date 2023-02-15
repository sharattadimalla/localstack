# localstack
repo to explore aws services locally using local stack

## AWS S3 Local Stack Setup


Pre-requisites:-

* python > 3.7
* brew install awscli
* Docker Desktop installed
* Launch Docker Desktop

```shell




# view all available aws services on localstack
localstack status services

# create s3 bucket on localstack
aws s3 mb s3://local-s3-bucket --endpoint-url http://localhost:4566

# list all s3 buckets on localstack
aws s3 ls --endpoint-url=http://localhost:4566 --recursive --human-readable

# create a sample file and upload to s3 bucket
touch test_file.txt && echo "test local s3 with local stack" >> test_file.txt
aws s3 cp test_file.txt s3://local-s3-bucket --endpoint-url=http://localhost:4566

# list all objects inside s3 bucket
aws s3 ls s3://local-s3-bucket --endpoint-url=http://localhost:4566

```

