aptmirror Cookbook
==================
This cookbook is useful if you have a Precise Ubunut mirror. People having low bandwidth could take advantage of a local mirror. When it is applied the cooked machine would access to your local mirror instead to visit an Ubuntu official mirror.

Requirements
------------


Attributes
----------
This recipe needs only one attribute, the hostname of the local mirror.  

e.g.
#### aptmirror::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['aptmirror']['server']</tt></td>
    <td>String</td>
    <td>hostname of your local mirror. The default value is the IP of my local mirror</td>
    <td><tt>'192.168.28.102'</tt></td>
  </tr>
</table>

Usage
-----
#### aptmirror::default
This is a regular definition of a role which would access your local mirror.


```json
{
  "name":"aptclient",
  "chef_type":"role",
  "json_class":"Chef::Role",
  "default_attributes": {
	"aptmirror": {
		"server": "192.168.28.102"
	}
  },
  "run_list": [
    "recipe[aptmirror]"
  ]
}
```

Contributing
------------
TODO: (optional) If this is a public cookbook, detail the process for contributing. If this is a private cookbook, remove this section.

e.g.
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: John Sanabria
