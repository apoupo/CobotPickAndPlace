from setuptools import setup, find_packages
from typing import List
# setup.py

REQUIREMENTS_FILE= "requirements.txt"
REMOVE_E= "-e ."

def get_requirements()->List[str]:
    # TODO: Write a function that reads all the lines from requirements.txt and returns it as a list.
    with open(REQUIREMENTS_FILE) as requirements_file:

        requirements_list= requirements_file.readlines()
    # Getting all the names of the requirements to a single line.
    requirements_list= [i.replace("\n", "") for i in requirements_list]
    if REMOVE_E in requirements_list:
        requirements_list.remove(REMOVE_E)
    return requirements_list


setup(
    name= "cobotTaskDecomposition",
    packages= find_packages(),
    install_requires= get_requirements(),
    python_requires='>=3.8',
)