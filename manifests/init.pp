class example {

  define ressource {
    notify { "$name": }

    #file { "/tmp/all-names.xml-${name}":
    #  content => template("example/all-ressources.erb"),
    #}

  }
}

example::ressource { "test1": }
example::ressource { "test2": }
require example::once

class example::once {

    file { "/tmp/all-names.xml":
      content => template("example/all-ressources.erb"),
    }

}
