def resp_app(env, start_response):
    data = b'Hello from python3!'
    print (env)
    start_response('200 OK', [('Content-Type', 'text/plain'), ('Content-Length', str(len(data)))])
    return iter([data])
