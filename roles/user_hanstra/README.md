# README.md
# Ansible Role: user_hanstra

An Ansible role to add hanstra bash shell setup
- Make sure directory in place
- Add hanstra aliases and bashrc from tar archive

## Requirements

Run from ansible server with IAM permissions.

Must be server which is part of the ND.EDU domain with VPC and network connections behind everything.

## Role Variables

Uses local host_vars files to obtain set of variables.

## Dependencies

Notre Dame KRB5 server accessible

## Example Playbook

    - hosts: [aws-all]
      become: yes
      become_user: root
      roles:
          - user_hanstra

