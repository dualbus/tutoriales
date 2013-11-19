============
  Security
============

Types of systems
--------------------

- Network services
- Embedded systems
- Web applications
- ...


DNS
----------

Knowledge: DNS protocol
Objective: Host discovery. Understanding of network organization. DoS
           attacks.
Concepts: DNS zone transfer, name server, DNS records.
Tools: dig, nslookup, host, ping, bfdomain.py, dnsenum.

- bfdomain.py - asphyx1a Git Source Tree - General purpose public information gathering toolchain written in Python. <http://code.0x0lab.org/p/asphyx1a/source/tree/master/bfdomain.py>

  DNS record brute-forcer. Takes a wordlist of common subdomains, and
  queries them in parallel.

- dnsenum - DNSenum is a pentesting cool created to enumerate DNS info about domains - Google Project Hosting <https://code.google.com/p/dnsenum/>

  Idem

- DNS rebinding - Wikipedia, the free encyclopedia <http://en.wikipedia.org/wiki/DNS_rebinding>
- cr.yp.to/djbdns/axfr-notes.html <http://cr.yp.to/djbdns/axfr-notes.html>
- Chapter 10 Diagnostics and Tools - dig <http://www.zytrax.com/books/dns/ch10/dig.html>
- Probabilistic Use of TC Flag to Prevent DNS Amplification Attacks : netsec <http://www.reddit.com/r/netsec/comments/1bamsd/probabilistic_use_of_tc_flag_to_prevent_dns/>
- How the Spamhaus DDoS attack could have been prevented | Security &amp; Privacy - CNET News <http://news.cnet.com/8301-1009_3-57576947-83/how-the-spamhaus-ddos-attack-could-have-been-prevented/>


WHOIS
----------

Objective: Target profiling, provider identification, network
           discovery.

Tools: whois


Crawling
----------

- Wget <http://www.gnu.org/software/wget/>

  Network file fetcher. Supports crawling natively. Uses HTTP
  keep-alive directive.


Network mapping
--------------------

Knowledge involved: TCP/IP stack, network services, firewalls, NAT.
Objective: Reconnaissance. Discovery and identification.


- netcat (openbsd version)

  Port scanning, TCP/UDP sockets, aka network swiss knife.

- socat (advanced netcat)

  Port scanning, sockets, serial, commands.

- nmap <http://nmap.org/>

  Port scanning, host discovery, service detection and
  identification, OS detection, firewall evasion.
  
- hping <http://www.hping.org/>

  Packet swiss knife. TCP/UDP/ICMP. Raw packets.

- Airmon-ng <http://www.aircrack-ng.org/doku.php?id=airmon-ng>

  Easily setup monitoring on a wireless network interface.

- Linux Networking-concepts HOWTO <http://netfilter.org/documentation/HOWTO//networking-concepts-HOWTO.html#toc1>

- netfilter/iptables project homepage - Documentation about the netfilter/iptables project <http://netfilter.org/documentation/>

- Iptables Tutorial 1.2.2 <http://www.frozentux.net/iptables-tutorial/iptables-tutorial.html>


Sniffing
----------

Knowledge: Network protocols (HTTP, FTP, IRC), network hubs and
           switches, wireless LAN monitoring, man-in-the-middle.
Objective: Interception of sensitive data. Data logging. Stealing of
           credentials.

- dsniff <http://www.monkey.org/~dugsong/dsniff/>
  
  Collection of sniffing tools. Password interception. MITM.

- Wireshark <http://www.wireshark.org/>

  Traffic analysis. Live decryption. Protocol dissection.

- tcpdump <http://www.tcpdump.org/>

  Traffic analysis and logging.

- Etherape <http://etherape.sourceforge.net/>

  Passive host discovery

- Penetration Testing with dsniff <http://www.ouah.org/dsniffintr.htm>


SQLi
----------

Knowledge: SQL, HTTP, HTML.
Objective: Steal information. Privilege escalation. System
           reconnaissance.

- sqlmap: automatic SQL injection and database takeover tool <http://sqlmap.org/>

  Automate SQL injections. WAF and IDS detection and avoidance.

- Neohapsis/bbqsql · GitHub <https://github.com/Neohapsis/bbqsql#high-level-usage>

- SQL Injection Attacks by Example <http://www.unixwiz.net/techtips/sql-injection.html>
- yehg.net/lab/pr0js/pentest/wordlists/injections/SQL.txt <http://yehg.net/lab/pr0js/pentest/wordlists/injections/SQL.txt>
- Full MSSQL Injection PWNage <http://xd-blog.com.ar/descargas/manuales/bugs/full-mssql-injection-pwnage.html>
- sebug.net/paper/databases/informix/SQL Injection with Informix .txt <http://sebug.net/paper/databases/informix/SQL%20Injection%20with%20Informix%20.txt>
- The SQL Injection Knowledge Base <http://www.websec.ca/kb/sql_injection#MSSQL_Fuzzing_Obfuscation>
- SQL Injection - Hakipedia <http://hakipedia.com/index.php/SQL_Injection#INFORMATION_SCHEMA>
- appsec - Testing clean urls with sqlmap - IT Security Stack Exchange <http://security.stackexchange.com/questions/5869/testing-clean-urls-with-sqlmap>
- MS Access SQL Injection Cheat Sheet - Version 0.2 <http://nibblesec.org/files/MSAccessSQLi/MSAccessSQLi.html>
- www.insomniasec.com/publications/Access-Through-Access.pdf <http://www.insomniasec.com/publications/Access-Through-Access.pdf>


Wordlists
----------

Objective: use in bruteforcers/dictionary attacks.

- yehg.net/lab/1nc/words.inc.php <http://yehg.net/lab/1nc/words.inc.php>
- Passwords - SkullSecurity <http://www.skullsecurity.org/wiki/index.php/Passwords>


XSS
----------

Knowledge: Javascript, HTTP, HTML, percent encoding.
Objective: Steal sessions, execute unauthorized actions client-side
           (could have server-side impact).

There are reflective and persistent (stored) XSS attacks.

- A Lesser XSS Attack Greater Than Your Regex Security | Deadliest Web Attacks <http://deadliestwebattacks.com/2013/01/14/a-lesser-xss-attack-greater-than-your-regex-security/>
- Cross-site Scripting (XSS) - OWASP <https://www.owasp.org/index.php/Cross-site_Scripting_(XSS)>
- XSS Cheat Sheet: Prevent Cross Site Scripting Attacks, Injections | Veracode <http://www.veracode.com/security/xss>

Web
----------

- browsersec - Browser Security Handbook - Google Project Hosting <https://code.google.com/p/browsersec/>
- WebAppDefaultsDB (Web App Defaults Database) <https://github.com/WebAppDefaultsDB>

Data mining
--------------------

- PIN number analysis <http://www.datagenetics.com/blog/september32012/>
- Secretary Puzzle <http://www.datagenetics.com/blog/december32012/index.html>
- Sharing secrets and distributing passwords <http://www.datagenetics.com/blog/november22012/index.html>
- Parrondo&#39;s Paradox <http://www.datagenetics.com/blog/august22012/index.html>
- Eight Queens Problem <http://www.datagenetics.com/blog/august42012/index.html>


Crypto
----------

- xortool <https://github.com/hellman/xortool>

  Decryption of XOR encrypted messages.

- Discrete Logarithms - Wiki <http://www.ecrypt.eu.org/wiki/index.php/Discrete_Logarithms>
- Correlation attack - Wikipedia, the free encyclopedia <http://en.wikipedia.org/wiki/Correlation_attack#Example>
- Block cipher - Wikipedia, the free encyclopedia <http://en.wikipedia.org/wiki/Block_cipher#Iterated_block_ciphers>
- Diffie–Hellman key exchange - Wikipedia, the free encyclopedia <http://en.wikipedia.org/wiki/Diffie%E2%80%93Hellman_key_exchange>
- Elliptic curve cryptography - Wikipedia, the free encyclopedia <http://en.wikipedia.org/wiki/Elliptic_curve_cryptography#Patents>
- Discrete logarithm - Wikipedia, the free encyclopedia <http://en.wikipedia.org/wiki/Discrete_logarithm>
- Primes, Modular Arithmetic, and Public Key Cryptography <http://www.math.cornell.edu/~mec/2003-2004/cryptography/diffiehellman/diffiehellman.html>
- Why is the number one not a prime? <http://primes.utm.edu/notes/faq/one.html>
- Decrypting text <http://www.richkni.co.uk/php/crypta/freq.php>
- Transposition cipher - Wikipedia, the free encyclopedia <http://en.wikipedia.org/wiki/Transposition_cipher>


PRNG
----------

- cryptography - Cracking a linear congruential generator - IT Security <http://security.stackexchange.com/questions/4268/cracking-a-linear-congruential-generator>
- Selection of LCG Parameters <http://www.cse.wustl.edu/~jain/cse567-06/ftp/k_26rng/sld010.htm>
- Random number generator attack - Wikipedia, the free encyclopedia <http://en.wikipedia.org/wiki/Random_number_generator_attack#Prominent_examples_of_random_number_generator_security_issues>
- Codifies: PHP rand(0,1) on Windows &lt; OpenSSL rand() on Debian <http://cod.ifies.com/2008/05/php-rand01-on-windows-openssl-rand-on.html>
- csrc.nist.gov/groups/ST/toolkit/rng/documents/nissc-paper.pdf <http://csrc.nist.gov/groups/ST/toolkit/rng/documents/nissc-paper.pdf>
- www.schneier.com/paper-prngs.pdf <http://www.schneier.com/paper-prngs.pdf>

Malware
----------

- Index of /docs-free/morris-worm/worm <http://www.foo.be/docs-free/morris-worm/worm/>
- Hacker Defender HxDef Rootkit Tutorial in 10 Steps [Nostalgia] | Vishnu Valentino | Ethical Hacking Tutorial, Tips and Trick <http://vishnuvalentino.com/hacking-tutorial/hacker-defender-hxdef-rootkit-tutorial-in-10-steps-nostalgia/>


SSL
----------

- Home · ssllabs/research Wiki <https://github.com/ssllabs/research/wiki>
- www.thc.org/thc-ssl-dos/ <http://www.thc.org/thc-ssl-dos/>
- Moxie Marlinspike &gt;&gt; software &gt;&gt; sslstrip <http://www.thoughtcrime.org/software/sslstrip/>
- Qualys SSL Labs - Projects / SSL/TLS Deployment Best Practices <https://www.ssllabs.com/projects/best-practices/index.html>


Proxy
----------

- mitmproxy - home <http://mitmproxy.org/>
  
  Intercept web traffic. Replay requests. Modify requests.
  Intercept+modify.

- RatproxyDoc - ratproxy - Project documentation - passive web application security assessment tool - Google Project Hosting <https://code.google.com/p/ratproxy/wiki/RatproxyDoc>


Cracking
----------

Knowledge: hash functions, salts (crypto context).
Objective: crack hashed passwords, obtain original plaintext.

John The Ripper, hashcat, samdump2, rainbow tables.

- Cracking of wireless networks - Wikipedia, the free encyclopedia <http://en.wikipedia.org/wiki/Cracking_of_wireless_networks#Reconnaissance_of_wireless_networks>
- mask_attack [hashcat wiki] <http://hashcat.net/wiki/doku.php?id=mask_attack>
- John the Ripper Tutorial - John the Ripper may be simple for many geeks to use, but newbies and geeks in training may find it difficult to do exactly what they want. This tutorial is aimed at them. <http://www.osix.net/modules/article/?id=455>
- John the Ripper and Hashcat - Markov Comparison <http://www.adeptus-mechanicus.com/codex/jtrhcmkv/jtrhcmkv.php>
- Reusable Security: Analysis of 10k Hotmail Passwords Part 5: Markov Model Showdown <http://reusablesec.blogspot.mx/2009/11/analysis-of-10k-hotmail-passwords-part.html>
- John the Ripper password cracker users <http://comments.gmane.org/gmane.comp.security.openwall.john.user/5949>
- infosec-summit.issa-balt.org/assets/Presentations/Rick_Redman_-_Cracking_3.1_Million_Passwords.pdf <http://infosec-summit.issa-balt.org/assets/Presentations/Rick_Redman_-_Cracking_3.1_Million_Passwords.pdf>
- How To Use John The Ripper To Crack Hashes And Passwords | Under Your Hat — Security, Privacy, Anonymity <http://underurhat.com/hacking/tutorials/how-to-use-john-the-ripper-to-crack-hashes-and-passwords/>
- Reverse Engineering/Cracking Windows XP Passwords - Wikibooks, open books for an open world <http://en.wikibooks.org/wiki/Reverse_Engineering/Cracking_Windows_XP_Passwords#Three_ways_to_recover_Windows_Password>
- What technical reasons are there to have low maximum password lengths? - IT Security <http://security.stackexchange.com/questions/33470/what-technical-reasons-are-there-to-have-low-maximum-password-lengths>
- dl.aircrack-ng.org/breakingwepandwpa.pdf <http://dl.aircrack-ng.org/breakingwepandwpa.pdf>
- Cisco switches to weaker hashing scheme, passwords cracked wide open | Ars Technica <http://arstechnica.com/security/2013/03/cisco-switches-to-weaker-hashing-scheme-passwords-cracked-wide-open/>
- 25-GPU cluster cracks every standard Windows password in &lt;6 hours | Ars Technica <http://arstechnica.com/security/2012/12/25-gpu-cluster-cracks-every-standard-windows-password-in-6-hours/>
- hash - Hashing a key: less entropy than the key itself - IT Security <http://security.stackexchange.com/questions/31961/hashing-a-key-less-entropy-than-the-key-itself>
- authentication - Is Username/Display Name Login more secure than email login? - IT Security <http://security.stackexchange.com/questions/32039/is-username-display-name-login-more-secure-than-email-login>
- encryption - Encrypting Fields in Database - IT Security <http://security.stackexchange.com/questions/32012/encrypting-fields-in-database>
- authentication - Passwords Being Sent in Clear Text Due to Users&#39; Mistake in Typing it in the Username Field - IT Security <http://security.stackexchange.com/questions/32003/passwords-being-sent-in-clear-text-due-to-users-mistake-in-typing-it-in-the-use>

Javascript
----------

- Billy Hoffman - JavaScript: The Evil Parts - YouTube <https://www.youtube.com/watch?v=RKMktxncquc>

Honeypot
----------

- Bed Against The Wall: Running A SSH Honeypot With Kippo: Let&#39;s Catch Some Script Kiddies <http://blog.macuyiko.com/2011/03/running-ssh-honeypot-with-kippo-lets.html>

Modem/Router
--------------------

- Routerpwn 1.11.161 <http://www.routerpwn.com/#thomson>
- TG582N - AAISP Wiki <http://wiki.aa.org.uk/index.php/TG582N>
- www.hakim.ws/2wire/1-003.full.txt <http://www.hakim.ws/2wire/1-003.full.txt>
- Puerta trasera en Technicolor TG582n | <http://www.hakim.ws/2013/01/puerta-trasera-en-technicolor-tg582n/>

Reverse eng.
--------------------

Commands:
  objdump, strings, file, nm, od -tx1, xxd

- FatELF <http://icculus.org/fatelf/>
- Reverse Engineering - Area 51 - Stack Exchange <http://area51.stackexchange.com/proposals/49551/reverse-engineering?referrer=tMnjk2Xy4m_6biNthqvlIQ2>
- Game boy reverse engineering <http://blog.gg8.se/wordpress/2013/02/25/gameboy-project-week-8-the-white-nintendo-power-official-flash-cartridge-a-tale-of-reverse-engineering-sweat-and-tears/>
- Game boy ASM school <http://gameboy.mongenel.com/asmschool.html>
- Foscam reveng <http://irishjesus.wordpress.com/2010/03/30/hacking-the-foscam-fi8908w/>


Social eng.
--------------------

- Pentest Geek » How do I phish? – Advanced Email Phishing Tactics <http://www.pentestgeek.com/2013/01/30/how-do-i-phish-advanced-email-phishing-tactics/>


Adicional
----------

- Tutorial on Buffer Overflows <http://www1.maths.leeds.ac.uk/~read/bofs.html>
- Writing shellcode <http://www.safemode.org/files/zillion/shellcode/doc/Writing_shellcode.html>
- Appsec USA 2013, New York, New York <http://appsecusa.org/2013/>
- Blab - ouspg - On data generation. - tools for the b[ei]tterment of mankind - Google Project Hosting <https://code.google.com/p/ouspg/wiki/Blab>
- More magic - Lessons learned from NUL byte bugs <http://www.more-magic.net/posts/lessons-learned-from-nul-byte-bugs.html>
- Blog especializado en la Seguridad Informática, el Hacking Ético, Cómputo Forense y la Criptografía explicado por profesionales de cáda área. | Hacking Mexico <http://hacking.mx/iniciativamx/>
- Bluebox’s Dexter: Free Android Analysis Tool | Bluebox Blog <http://blog.bluebox.com/2013/03/11/dexter-android-analysis/>
- trailofbits.files.wordpress.com/2010/04/practical-rop.pdf <http://trailofbits.files.wordpress.com/2010/04/practical-rop.pdf>
- Category:OWASP Best Practices: Use of Web Application Firewalls - OWASP <https://www.owasp.org/index.php/Category:OWASP_Best_Practices:_Use_of_Web_Application_Firewalls>
- Hack This Site! <http://www.hackthissite.org/pages/info/guide.php>
- Wirelessdefence.org <http://www.wirelessdefence.org/Contents/Void11Main.htm>
- Category:Attack - OWASP <https://www.owasp.org/index.php/Category:Attack>
- Category:Vulnerability - OWASP <https://www.owasp.org/index.php/Category:Vulnerability>
- SecurityFocus <http://www.securityfocus.com/>
- network - How are spoofed packets detected? - IT Security <http://security.stackexchange.com/questions/31999/how-are-spoofed-packets-detected>
- virtualization - Segmenting Virtual Network Traffic - IT Security <http://security.stackexchange.com/questions/32115/segmenting-virtual-network-traffic>
- encryption - Is it bad practice to send decryptable data? - IT Security <http://security.stackexchange.com/questions/32047/is-it-bad-practice-to-send-decryptable-data>
- Penetration Testing Lab | Explore the lab…maybe you will find some interesting things… <http://pentestlab.wordpress.com/>
- Bug 3711 – Response pool use-after-free memory corruption error <http://bugs.proftpd.org/show_bug.cgi?id=3711>
- El Señor de los Anillos para combatir las Amenazas Persistentes Avanzadas <http://muyseguridad.net/2013/03/06/senor-de-los-anillos-para-combatir-amenazas-persistentes-avanzadas/>
- Hacking Mexico <http://hacking.mx/>
- The Six Dumbest Ideas in Computer Security <http://www.ranum.com/security/computer_security/editorials/dumb/index.html>
- Schneier on Security: Is Software Security a Waste of Money? <http://www.schneier.com/blog/archives/2013/03/is_software_sec.html>
- Airsnarf - A rogue AP setup utility <http://airsnarf.shmoo.com/>
- ip spoofing - IP forgery (theories are fine) - IT Security <http://security.stackexchange.com/questions/31213/ip-forgery-theories-are-fine>
- Skype Logs - The Hacker Factor Blog <http://www.hackerfactor.com/blog/index.php?/archives/231-Skype-Logs.html>
- GDS Blog - GDS Blog - Network Testing 101: If Your Name&#39;s Not Down, You&#39;re Not Getting In <http://blog.gdssecurity.com/labs/2013/3/26/network-testing-101-if-your-names-not-down-youre-not-getting.html>
- www.hakim.ws <http://www.hakim.ws/>
- Nodes » calderonpale.com <http://www.calderonpale.com/>
- Websec.mx - Soluciones en Seguridad Digital <http://websec.mx/>
- Penetration Testing: Re: Choosing an Independent Penetration Testing Firm <http://seclists.org/pen-test/2013/Feb/4>
- Foscam Firmware 11.37.2.48 Path Traversal ≈ Packet Storm <http://packetstormsecurity.com/files/120624/Foscam-Firmware-11.37.2.48-Path-Traversal.html>
- /r/netsec - Information Security News &amp; Discussion <http://www.reddit.com/r/netsec>
- Anatomy of an Attack: The Five Ps - O&#39;Reilly Media <http://onlamp.com/pub/a/security/excerpt/SnortandIDSTools_chap1/index.html?page=4>
- login page csrf exploit exploits - Page 26 - Code Exploits Collection <http://exploitsdownload.com/search/login%20page%20csrf%20exploit/26>
- 10 Essential Open Source Security Tools | HackerTarget.com <http://hackertarget.com/10-open-source-security-tools/>
- Google Hacking Database, GHDB, Google Dorks <http://www.exploit-db.com/google-dorks/>
- iac.dtic.mil/csiac/download/vulnerability_assessment.pdf <http://iac.dtic.mil/csiac/download/vulnerability_assessment.pdf>
- REST worst practices <http://jacobian.org/writing/rest-worst-practices/>
- Secrets in the code · GitHub Blog <https://github.com/blog/1390-secrets-in-the-code>
- Hardening WordPress « WordPress Codex <http://codex.wordpress.org/Hardening_WordPress>
- Schneier on Security <http://www.schneier.com/blog/>
- Acerca de Nosotros | HackingMexico <http://www.hackingmexico.mx/acerca-de-nosotros/>
- Simple DTMF decoder pulls numbers from YouTube videos <http://hackaday.com/2011/04/02/simple-dtmf-decoder-pulls-numbers-from-youtube-videos/>
- PHP Security Consortium: PHP Security Guide: Sessions <http://phpsec.org/projects/guide/4.html>
