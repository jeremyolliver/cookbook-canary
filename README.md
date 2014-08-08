# canary-cookbook

TODO: Enter the cookbook description here.

## Supported Platforms

TODO: List your supported platforms.

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['canary']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

## Usage

### canary::default

Include `canary` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[canary::default]"
  ]
}
```

## License and Authors

Author:: Jeremy Olliver (<jeremy.olliver@gmail.com>)
License:: apachev2
