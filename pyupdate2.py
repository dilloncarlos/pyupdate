import pip
from subprocess import call


packages = [dist.project_name for dist in pip.get_installed_distributions()]

for package in packages:
    print "Updating package:", package
    call("pip install --quiet --user --upgrade " + package, shell=True)

print("Done updating python 2 modules")
