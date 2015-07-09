{% from "avahi/map.jinja" import avahi with context %}

avahi-daemon:
    pkg.installed:
      - pkgs: {{ avahi.pkgs }}
    service.running:
      - name: {{ avahi.service }}

avahi-daemon.conf:
  file.managed:
    - name: {{ avahi.config }}
    - template: jinja
    - source: salt://avahi/files/avahi-daemon.conf
    - require:
      - pkg: avahi-daemon
    - watch_in:
      - service: {{ avahi.service }}
>>>>>>> 7c7b4cfa320c2342a936752b775e99c57add78f3
