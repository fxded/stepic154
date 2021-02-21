def resp_app(env, start_response):
    data = "\n".join(env.get('QUERY_STRING').split("&"))
    start_response('200 OK', [('Content-Type', 'text/plain'), ('Content-Length', str(len(data)))])
    return [bytes(data.encode())]
