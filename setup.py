from setuptools import setup, find_packages

setup(
    name="my-project",
    packages=find_packages(),
    entry_points={"console_scripts": ["run = service:main"]},
    platform="any",
)
