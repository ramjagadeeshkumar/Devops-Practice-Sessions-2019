resource "aws_rds_cluster" "postgressql" {
    cluster_identifier = "aurorapractice"
    engine = "aurora-postgresql"
    master_username = "venkyrds"
    master_password = "venkyrds"
    availability_zones      = ["us-east-1a", "us-east-1b", "us-east-1c"]
    database_name           = "mydb"
    backup_retention_period = 5
    final_snapshot_identifier = false
}
