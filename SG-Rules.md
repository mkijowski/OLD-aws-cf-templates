###Example Security Group rules

Windows Server:
```
  WindowsSecurityGroup:
    Type: 'AWS::EC2::SecurityGroup'
    Properties:
      VpcId: !Ref VPC
      GroupDescription: Enable SSH access via port 22 and Remote desktop via port 3389.
      SecurityGroupIngress:
        - IpProtocol: tcp
          FromPort: '22'
          ToPort: '22'
          CidrIp: !Ref SSHLocation
        - IpProtocol: tcp
          FromPort: '22'
          ToPort: '22'
          CidrIp: 130.108.0.0/16  # WSU CIDR
        - IpProtocol: tcp
          FromPort: '3389'
          ToPort: '3389'
          CidrIp: !Ref SSHLocation
        - IpProtocol: tcp
          FromPort: '3389'
          ToPort: '3389'
          CidrIp: 130.108.0.0/16  # WSU CIDR
        - IpProtocol: udp
          FromPort: '3389'
          ToPort: '3389'
          CidrIp: !Ref SSHLocation
        - IpProtocol: udp
          FromPort: '3389'
          ToPort: '3389'
          CidrIp: 130.108.0.0/16  # WSU CIDR
        - IpProtocol: -1
          FromPort: '-1'
          ToPort: '-1'
          CidrIp: 130.108.0.0/16  # WSU CIDR
```

Linux:
```
  LinuxSecurityGroup:
    Type: 'AWS::EC2::SecurityGroup'
    Properties:
      VpcId: !Ref VPC
      GroupDescription: Enable SSH access via port 22 and open ports 1025 through 2048.
      SecurityGroupIngress:
        - IpProtocol: tcp
          FromPort: '22'
          ToPort: '22'
          CidrIp: !Ref SSHLocation
        - IpProtocol: tcp
          FromPort: '22'
          ToPort: '22'
          CidrIp: 130.108.0.0/16  # WSU CIDR
        - IpProtocol: tcp
          FromPort: '1025'
          ToPort: '2048'
          CidrIp: !Ref SSHLocation
        - IpProtocol: tcp
          FromPort: '1025'
          ToPort: '2048'
          CidrIp: 130.108.0.0/16  # WSU CIDR
        - IpProtocol: -1
          FromPort: '-1'
          ToPort: '-1'
          CidrIp: 10.0.0.0/16
```
