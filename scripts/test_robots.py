import urllib.robotparser

rp = urllib.robotparser.RobotFileParser()
rp.set_url("https://setup-devops-environment.ootori.dev/robots.txt")
rp.read()

print(rp.can_fetch("*", "https://setup-devops-environment.ootori.dev/"))
print(rp.can_fetch("Googlebot", "https://setup-devops-environment.ootori.dev/"))