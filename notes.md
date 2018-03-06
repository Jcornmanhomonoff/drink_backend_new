Upon deploying:

- must change config/initializers/cors.rb from

```rb
if Rails.env.development?
  development_client_origin = "http://localhost:8080"
end
```
to

```rb
if Rails.env.development?
  development_cors_port = 'GA'.each_byte.reduce('') do |a, e|
    a + format('%d', e)
  end.to_i
  development_client_origin = "http://localhost:#{development_cors_port}"
end
```
