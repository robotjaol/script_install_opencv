# OpenCV Source Installer for Ubuntu

A shell script that installs build dependencies, downloads OpenCV and opencv_contrib, compiles them, and performs a system-wide installation for C++ and Python development.

> **Project status:** privileged build automation; review and pin versions before running on a disposable or well-backed-up Ubuntu environment.

## What this repository contains

- APT dependency installation for an OpenCV source build.
- OpenCV and contrib module download/build workflow.
- CMake configuration for C++ and Python bindings.
- System-wide installation and basic verification guidance.

## Quick start


~~~bash
git clone https://github.com/robotjaol/script_install_opencv.git
cd script_install_opencv
less install_opencv.sh
chmod +x install_opencv.sh
sudo ./install_opencv.sh
~~~

## Engineering notes

- The script changes system packages and /usr/local; it is not equivalent to a virtual-environment install.
- Pin OpenCV and opencv_contrib to the same release or commit for reproducibility.
- Record CMake output, compiler version, CPU architecture, and enabled modules.
- For Python-only use, prefer a virtual environment and a maintained wheel when it meets requirements.

## Repository map

| Path | Purpose |
| --- | --- |
| install_opencv.sh | Privileged dependency, build, and installation workflow. |
| LICENSE | License terms. |

## Safety and limitations

Do not run a privileged installer without reading it. Use backups or a disposable environment, check downloaded sources, and expect the build to consume significant time, disk space, memory, and CPU.

## Contributing

Open an issue before a large change. Keep changes focused, document assumptions, and include a reproducible verification step.

## License

A repository-wide open-source license has not been declared. Obtain permission before redistributing material.
