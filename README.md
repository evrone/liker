# PLEASE NOTE, THIS PROJECT IS NO LONGER BEING MAINTAINED
# Liker

Liker is wrapper to social networks API, which fetches the count of likes for specified URL. 
It supports Twitter, Facebook and VK. You are welcome to add support of some other resources.

<a href="https://evrone.com/?utm_source=github.com">
  <img src="https://evrone.com/logo/evrone-sponsored-logo.png"
       alt="Sponsored by Evrone" width="231">
</a>

## Getting Started
### Installation

```gem install likes```

or add `gem "likes"` to the `Gemfile`

### Usage

    Liker.likes_count "http://evrone.ru/", :source => :facebook
     => 60
     
    Liker.likes_count "http://evrone.ru/"
     => {:total=>105, :vk=>5, :twitter=>40, :facebook=>60}

## Running the tests

Explain how to run the automated tests for this system

### Break down into end to end tests

Explain what these tests test and why

```
Give an example
```

### And coding style tests

Explain what these tests test and why

```
Give an example
```

## Deployment

Add additional notes about how to deploy this on a live system

## Contributing

Please read [Code of Conduct](CODE-OF-CONDUCT.md) and [Contributing Guidelines](CONTRIBUTING.md) for submitting pull requests to us.

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, 
see the [tags on this repository](https://github.com/evrone/liker/tags). 

## Authors

* [Kir Shatrov](https://github.com/kirs/) - *Initial work*

See also the list of [contributors](https://github.com/evrone/liker/contributors) who participated in this project.

## License

This project is licensed under the [MIT License](LICENSE).
