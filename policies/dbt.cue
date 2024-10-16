name!:                     string
fullyQualifiedName?:       null | string
description!:              string
kind!:                     "workload"
version!:                  =~"^[0-9]+\\.[0-9]+\\.[0-9]+$"
infrastructureTemplateId!: string
useCaseTemplateId!:        string
dependsOn: [...string]
tags: [...#OM_Tag]
readsFrom: [...string]
specific: {
	dbtProjectName!: string & =~"^[a-z_]+$"
	gitUrl!:         string
	database!:       string
	schema!:         string
	secrets?: null | {
		secretsProvider!: null | string & =~"AWS"
		secretId!:        null | string
		region!:          null | string & =~"^[A-Z0-9_]+$"
	}
	cloudStorage?: null | {
		storageProvider!: null | string & =~"AWS"
		bucketURI!:       null | string
		region!:          null | string & =~"^[A-Z0-9_]+$"
	}
}

#OM_Tag: {
	tagFQN!:      string
	description?: string | null
	source!:      string & =~"(?i)^(Tag|Glossary)$"
	labelType!:   string & =~"(?i)^(Manual|Propagated|Automated|Derived)$"
	state!:       string & =~"(?i)^(Suggested|Confirmed)$"
	href?:        string | null
	...
}