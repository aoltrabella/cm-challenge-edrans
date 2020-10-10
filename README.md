This repository was created exclusively to resolve a Configuration Management Challenge proposed by Edrans.
# Configuration Management Challenge by Alan Oltrabella

## Infrastructure Diagram
![alt text](simpleapp_infra.jpeg)

### Requirements
- **virtualbox >= 6.0.24**
- **vagrant >= 2.2.6**
- **ansible >= 2.9.6** (also ansible collection **'ansible.windows'** is needed)
- **python3 >= 3.8.5** (also python module **'pywinrm' >= 0.3.0** is needed)

### How to deploy the needed infrastructure

After cloning the repository to your local machine, just execute **'vagrant up'** inside the directory where **'Vagrantfile'** was copied.