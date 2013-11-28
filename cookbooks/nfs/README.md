nfs Cookbook
============
This Chef recipe allows to deploy the popular network file system, NFS.


Requirements
------------

Attributes
----------
These are the following attributes to need to be instantiated 

e.g.
#### nfs::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['nfs']['master']</tt></td>
    <td>String</td>
    <td>Host name which is the head or master of the cluster</td>
    <td><tt>"master"</tt></td>
  </tr>
  <tr>
    <td><tt>['nfs']['shareddir']</tt></td>
    <td>String</td>
    <td>Directory name which would be shared for different hosts</td>
    <td><tt>"/shared"</tt></td>
  </tr>
</table>

Usage
-----
#### nfs::default
When you use the default recipe you need to define the nfs.shareddir variable however this recipe needs to be invoked in conjunction with the master or client recipe.

e.g.
If you are invoking this recipe in your master role define 

```json
{
  "name":"master",
  "chef_type":"role",
  "json_class":"Chef::Role",
  "default_attributes": {
	"nfs": {
		"shareddir": "/shared"
	}
  },
  "run_list": [
    "recipe[nfs]",
    "recipe[nfs::master]"
  ]
}
```

If you are invoking this recipe in your client role define 

```json
{
  "name":"client",
  "chef_type":"role",
  "json_class":"Chef::Role",
  "default_attributes": {
	"nfs": {
		"shareddir": "/shared",
		"master": "master"
	}
  },
  "run_list": [
    "recipe[nfs]",
    "recipe[nfs::client]"
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
