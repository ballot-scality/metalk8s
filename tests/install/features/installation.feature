Feature: MetalK8s installation
    Check install on servers

Scenario: Run install and re-install
    Given A complete inventory
    When I run 'make shell'
    And I launch ansible with the 'deploy.yml' playbook
    Then Playbook should complete without error
    When I launch ansible with the 'deploy.yml' playbook
    Then Playbook should complete without error
