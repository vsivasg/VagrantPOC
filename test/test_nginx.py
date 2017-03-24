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

def test_nginx_is_installed(Package):
    nginx = Package("nginx")
    assert nginx.is_installed

def test_nginx_running_and_enabled(Service):
    nginx = Service("nginx")
    assert nginx.is_running
    assert nginx.is_enabled