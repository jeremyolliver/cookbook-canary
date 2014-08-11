# cookbook-canary

This cookbook installs canaryd and sensord from source. This cookbook is still a work in progress. Contributions, forks and re-use welcome.

## Supported Platforms

debian family, and rhel family

## Usage

### canary::default

This is the full install option. This recipe installs go, godeps, and the components of canary (candaryd and sensord) from source and compiles them. It also installs redis from source and enables it as a service via the `redisio` cookbook.

Include `canary` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[canary::default]"
  ]
}
```

### canary::canaryd

Installs build-essentials, go, and compiles `canaryd`

### canary::sensord

Installs build-essentials, libcurl, go and compiles `sensord`

## TODO

* Service definitions for canaryd and sensord
* Install via pre-compiled binaries
* tests

## Testing

kitchen definitions are setup to run the cookbook locally via `test-kitchen` and `vagrant`. This allows verification that the cookbook compiles and runs on desired platforms, though no automated tests exist at present

## License and Authors

Author:: Jeremy Olliver (<jeremy.olliver@gmail.com>)
License:: apachev2
