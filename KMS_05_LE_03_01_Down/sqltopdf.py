import pymysql 
from fpdf import FPDF

connection = pymysql.connect(
    host='localhost',
    user='root',
    password='',
    db='cd_management'
)

def generate_pdf(query, pdf_filename):
    cursor = connection.cursor()
    cursor.execute(query)
    
    rows = cursor.fetchall()

    pdf = FPDF()
    pdf.set_auto_page_break(auto=True, margin=15)
    pdf.add_page()


    pdf.set_font("Arial", size=12, style='B')
    pdf.cell(200, 10, txt="Query Results", ln=True, align='C')
    pdf.ln(10)

    pdf.set_font("Arial", size=10)
    for row in rows:
        pdf.cell(200, 10, txt=str(row), ln=True, align='L')


    pdf.output(pdf_filename)


queries = ["SELECT * FROM Songs_rated_3_or_higher", "SELECT * FROM songs_rated_under_3", "SELECT * FROM all_cd_songs_artist_genre", "SELECT * FROM how_many_songs_per_genre", "SELECT * FROM updated_genres", "SELECT * FROM cds_with_genres"]
for i in range(len(queries)):
    generate_pdf(queries[i], f"query_{i+1}_results.pdf")

