from flask import Flask, render_template
 
app = Flask(__name__)
 
@app.route('/gw/v1.0')
def render_static(landing_page):
    return render_template('./working/html/%s.html' % landing_page)
 
if __name__ == '__main__':
    app.run()