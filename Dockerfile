FROM suse/sles12sp3:latest
# Import the crt file of our private SMT server
ADD http://smt.test.lan/smt.crt /etc/pki/trust/anchors/smt.crt
RUN update-ca-certificates
RUN zypper ref -s
RUN zypper -n in vim
