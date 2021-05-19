#step1:
#login: auth: user/pass
#code: key
#proj ID: project ID
#region: asia-south1

provider "google" {
	project = "myproject-ID"
	region = "asia-south1"i
	credetials = "key"
}

# to launch VM instance 

resource "google_compute_instance"
