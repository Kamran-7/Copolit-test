#code for creating a resource group in aws
resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
}
#credetials for aws
security_groups = ["default"]
vpc_security_group_ids = ["sg-0a1b2c3d"]

#code for creating a resource group in azure
resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "West Europe"
}       

#code for creating a resource group in google cloud
resource "google_compute_instance" "default" {
  name         = "terraform-instance"
  machine_type = "f1-micro"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Include this section to give the VM an external ip address
    }
  }
}   

