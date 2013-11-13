p YAML.dump(['foo', 'bar', 'baz'])
p YAML.dump({'foo' => ['1', '2', '3'], 'bar' => 'baz'})
p YAML.load("foo: [1, 2, 3]\nbar: baz")
