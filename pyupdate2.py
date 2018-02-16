import pip
from subprocess import call


packages = [dist.project_name for dist in pip.get_installed_distributions()]

# In case one package fails to update, must currently be resolved externally
try:
    call("pip install --user --upgrade " + ' '.join(packages), shell=True)
except:
    print "Failed to update a module - see shell output above for details"
