from flask import Flask, render_template
 
app = Flask(__name__)
 
@app.route('/gw/v1.0')
def index():
    return render_template('./html/%s.html' % landing_page)
 
if __name__ == '__main__':
    app.run()