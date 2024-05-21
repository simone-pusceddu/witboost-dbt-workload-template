name!: string
fullyQualifiedName?: null | string
description!: string
kind: "workload"
version: string
infrastructureTemplateId: string
useCaseTemplateId: string
dependsOn: [...string]
tags: [...string]
readsFrom: [...string]
specific: {
	dbtProjectName!: string & =~"^[a-z_]+$"
	gitUrl!: string
	database!: string
	schema!: string
	secrets: {
		secretsProvider!: string & =~"(?-i)^(AWS|GCP|Azure)$"
		secretId!: string
		region!: string & =~"^[A-Z0-9_]+$"
	}
	cloudStorage: {
		storageProvider!: string & =~"(?-i)^(AWS|GCP|Azure)$"
		bucketURI!: string
		region!: string & =~"^[A-Z0-9_]+$"
	}
}