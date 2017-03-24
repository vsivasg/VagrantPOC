def test_passwd_file(File):
    passwd = File("/etc/passwd")
    assert passwd.contains("root")
    assert passwd.user == "root"
    assert passwd.group == "root"
    assert passwd.mode == 0o644

def test_ansible_is_installed(Package):
    ansible = Package("ansible")
    assert ansible.is_installed
    assert ansible.version.startswith("2.2.1.0")
