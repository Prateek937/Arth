provider "aws" {
    region = "ap-south-1"
    profile = "default"
}

provider "google" {
	project = "myproject-ID"
	region = "asia-south1"
	credetials = "key"
}