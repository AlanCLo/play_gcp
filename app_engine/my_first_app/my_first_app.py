import webapp2

class HomePage(webapp2.RequestHandler):
    def get(self):
        self.response.headers['Content-Type'] = 'text/html'
        self.response.out.write('<h3>Hello world!</h3><br/><p>This is so exciting</p>')

app = webapp2.WSGIApplication([
    ('/', HomePage),
], debug=True)

#print 'Content-Type: text/plain'
#print ''
#print 'Hello, world!'



