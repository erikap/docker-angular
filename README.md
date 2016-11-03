# docker-angular

Docker and tooling for using Angular 1.x in a reproducable way. Inspired by [docker-ember](https://github.com/madnificent/docker-ember).

## Prerequisites
Enable user-namespaces in Docker such that volumes are mounted with the right privileges. See [here](http://www.jrslv.com/docker-1-10/#usernamespacesindocker) for some basic info.

## Commands
The arguments you need to pass to the Docker run command for it to be useful are too cumbersome, hence we've created scripts to help you out. Run them at the root of your project.

### ngs

`ngs` launches the angular server for you

    # No nonsense angular server
    ngs

### ngi

`ngi` is an interactive command that helps you install dependencies, install new angular dependencies and run any other yo/gulp command. It can ask you questions and you can provide interactive answers.

    # Generate a component
    ngi yo fountain-angular1:component --name myComponent --dir components/game

