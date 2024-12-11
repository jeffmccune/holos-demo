regions: #Regions & {
	// dev1 is a region specifically for development purposes and not tied to a
	// geographical region
	dev1: {
		name: "dev1"
		zones: {
			dev1a: {
				name: "dev1a"
				clusters: {
					internal: {name: "dev1a-internal", scope: "internal", tier: "dev"}
					mgmt: {name: "dev1a-mgmt", scope: "mgmt", tier: "dev"}
					customer: {name: "dev1a-customer", scope: "customer", tier: "dev"}
				}
			}
		}
	}
	us_west_01: {
		name: "us-west-01"
		zones: {
			us_west_01a: {
				name: "us-west-01a"
				clusters: {
					internal: {name: "us-west-01a-internal", scope: "internal", tier: "prod"}
					mgmt: {name: "us-west-01a-mgmt", scope: "mgmt", tier: "prod"}
					customer: {name: "us-west-01a-customer", scope: "customer", tier: "prod"}
				}
			}
			us_west_01b: {
				name: "us-west-01b"
				clusters: {
					internal: {name: "us-west-01b-internal", scope: "internal", tier: "prod"}
					mgmt: {name: "us-west-01b-mgmt", scope: "mgmt", tier: "prod"}
					customer: {name: "us-west-01b-customer", scope: "customer", tier: "prod"}
				}
			}
		}
	}
	us_east_02: {
		name: "us-east-02"
		zones: {
			us_east_02a: {
				name: "us-east-02a"
				clusters: {
					internal: {name: "us-east-02a-internal", scope: "internal", tier: "prod"}
					mgmt: {name: "us-east-02a-mgmt", scope: "mgmt", tier: "prod"}
					customer: {name: "us-east-02a-customer", scope: "customer", tier: "prod"}
					customer2: {name: "us-east-02a-customer2", scope: "customer", tier: "prod"}
					customer3: {name: "us-east-02a-customer3", scope: "customer", tier: "prod"}
				}
			}
		}
	}
}
