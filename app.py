from flask import Flask, render_template
 
app = Flask(__name__)
 
@app.route('/')
def index():
    return render_template('./weather/html/%s.html' % ('landing_page'))
 
if __name__ == '__main__':
    app.run()