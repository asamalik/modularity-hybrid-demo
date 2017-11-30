# Fedora 27 - Hybrid Modular Demo

<img src="imgs/hybrid-modularity-banner.png" width="725px">

A demo of using [Modularity](https://docs.pagure.org/modularity) on top of a traditional Fedora release.

## Interactive demo

```
$ docker run --rm -it asamalik/modularity-hybrid-demo
```

Fedora 27 includes Node.js 8, which is the current version of the platform. Running the usual installation command installs this version the same way as in traditional Release:

```
$ dnf install nodejs
...
$ node --version
v8.9.1
```

As we can see, there is no difference in the default behavior between the traditional release and this hybrid modular one. But what if I want Node.js 6 I used in Fedora 26? I can do that using the new modular syntax:

```
$ dnf install @nodejs:6
...
$ node --version
v6.12.0
```

Great! Now I have installed Node.js 6 while Node.js 8 is also available. But wait, what if I try to update the system? Will it stay at version 6?

```
$ dnf update nodejs
...
Nothing to do.
Complete!
```

Wow! It really works! Let's prove that the version 8 is still available.

```
$ dnf module list
...
Name                     Stream     ...
nodejs                   6          ...
nodejs                   8          ...
```

Excellent! Can I go back to Node.js 8?

```
$ dnf install @nodejs:8
...
$ node --version
v8.9.1
```

Woot!








