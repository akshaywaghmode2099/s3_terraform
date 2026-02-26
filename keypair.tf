# Generate private key locally
resource "tls_private_key" "this" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

# Create AWS key pair using generated public key
resource "aws_key_pair" "this" {
  key_name   = "terraform-key"
  public_key = tls_private_key.this.public_key_openssh
}

# Save private key as .pem locally
resource "local_file" "private_key" {
  content  = tls_private_key.this.private_key_pem
  filename = "terraform-key.pem"
}
