# AMI Automation on AWS with Hashicorp Packer 

**_NOTE:_** Please update your `access_key` and `secret_key` in each json files before running the below commands.

## 1. Building First AMI using Packer

```
S😎MESH~[packer (main)]-$ cd 1-AMI_Using_Packer

S😎MESH~[1-AMI_Using_Packer (main)]-$ packer build first_image.json
```

## 2. Building Nginx AMI using Provisioners

```
S😎MESH~[packer (main)]-$ cd 2-Custom_Configs

S😎MESH~[2-Custom_Configs (main)]-$ packer build provisioners.json
```

## 3. Building Nginx AMI using Script Provisioners

```
S😎MESH~[packer (main)]-$ cd 3-Script_Provisioners

S😎MESH~[3-Script_Provisioners (main)]-$ packer build script_provisioners.json
```

## 4. Building Nginx AMI using File Provisioners

```
S😎MESH~[packer (main)]-$ cd 4-File_Provisioners

S😎MESH~[4-File_Provisioners (main)]-$ packer build file_provisioners.json
```

## 5. Building AMI on Multi Cloud Providers

```
S😎MESH~[packer (main)]-$ 

```

## 6. Building Nginx AMI using Post Processors

```
S😎MESH~[packer (main)]-$ cd 6-Post_Processors

S😎MESH~[6-Post_Processors (main)]-$ packer build post_processors.json
```

After completion of above command, we will get the 2 new files in same folder:
```
S😎MESH~[6-Post_Processors (main)]-$ ll
total 24
-rw-r--r--  1 someshp  staff   357B Aug 16 19:10 output.json
-rw-r--r--  1 someshp  staff   385B Aug 16 19:10 packer_amazon-ebs_aws.box
-rw-r--r--  1 someshp  staff   864B Aug 16 17:05 post_processors.json
```

```
S😎MESH~[6-Post_Processors (main)]-$ cat output.json
───────┬──────────────────────────────────────────────────────────────────────────────────────────────────────────
       │ File: output.json
───────┼──────────────────────────────────────────────────────────────────────────────────────────────────────────
   1   │ {
   2   │   "builds": [
   3   │     {
   4   │       "name": "amazon-ebs",
   5   │       "builder_type": "amazon-ebs",
   6   │       "build_time": 1629121237,
   7   │       "files": null,
   8   │       "artifact_id": "ap-south-1:ami-004b5504cbd9b11c2",
   9   │       "packer_run_uuid": "340131c3-b93a-0a95-ccec-c99c32475740",
  10   │       "custom_data": null
  11   │     }
  12   │   ],
  13   │   "last_run_uuid": "340131c3-b93a-0a95-ccec-c99c32475740"
  14   │ }
───────┴──────────────────────────────────────────────────────────────────────────────────────────────────────────
```

## 7. Building Nginx AMI using User defined Variables

```
S😎MESH~[packer (main)]-$ cd 7-User_Variables

S😎MESH~[7-User_Variables (main)]-$ packer build -var "description=Nginx-Server-Somesh" -var "version=1.1" user_variables.json

S😎MESH~[7-User_Variables (main)]-$ packer build -var-file=variables.json user_variables.json

```

## 8. Building Nginx AMI using environment Variables

```
S😎MESH~[packer (main)]-$ cd 8-Environment_Variables

S😎MESH~[8-Environment_Variables (main)]-$ export ACCESS_KEY="AKIAUGYH525YZ3PPLLH"
S😎MESH~[8-Environment_Variables (main)]-$ export SECRET_KEY="KLda2utRNKgq839yzppU+nEbUU8Qje0Ce+SapnaW"

S😎MESH~[8-Environment_Variables (main)]-$ packer build env_variables.json

```