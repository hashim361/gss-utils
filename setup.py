import setuptools

with open("README.md", "r") as fh:
    long_description = fh.read()

setuptools.setup(
    name="gssutils",
    version="0.0.2",
    author="Alex Tucker",
    author_email="alex@floop.org.uk",
    description="Common functions used by GSS data transformations",
    long_description=long_description,
    long_description_content_type="text/markdown",
    url="https://github.com/ONS-OpenData/gss-utils",
    packages=setuptools.find_packages(),
    install_requires=['requests',
                      'python_dateutil',
                      'CacheControl',
                      'databaker',
                      'pandas',
                      'pyexcel',
                      'pyexcel-ods3',
                      'xypath',
                      'html2text',
                      'rdflib',
                      'messytables',
                      'lxml'],
    tests_require=['behave', 'nose', 'vcrpy'],
    classifiers=[
        "Programming Language :: Python :: 3",
        "License :: OSI Approved :: Apache Software License",
        "Operating System :: OS Independent",
    ],
)
