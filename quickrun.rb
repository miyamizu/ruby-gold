module M
  def foo
    puts Const
  end
end
class Foo
  include M
  Const = "foo"
end
Foo.new.foo #=> エラー
