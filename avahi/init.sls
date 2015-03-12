avahi:
  pkg.installed:
    - name: avahi-daemon

avahi_smb_service:
  file.managed:
    - name: /etc/avahi/services/smb.service
    - source: salt://avahi/files/smb.service
    - user: root
    - group: root
    - mode: 0644
