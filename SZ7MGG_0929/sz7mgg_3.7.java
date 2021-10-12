import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;

public class SZ7MGG_7 implements Serializable {

	public static void main(String[] args) {

		hf4();
		hf5();
		
	}
	
	private static final long serialVersionUID = 1L;
	String rendszam;
	String tipus;
	int ar;

	public SZ7MGG_7(String r, String t, int a) {
		this.rendszam = r;
		this.tipus = t;
		this.ar = a;
	}

	public static void hf4() {
		SZ7MGG_7[] autok = { new SZ7MGG_7("IUP-232", "Opel", 600000), new SZ7MGG_7("PZL-434", "Ford", 5000000),
				new SZ7MGG_7("RPL-544", "Suzuki", 4000000) };
		try {
			ObjectOutputStream kifile = new ObjectOutputStream(new FileOutputStream("Autok.dat"));
			for (SZ7MGG_7 auto : autok) {
				kifile.writeObject(auto);
			}
			kifile.close();
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("Hiba1");
		}
		
	}

	public static void hf5() {
		SZ7MGG_7 ma;
		try {
			File fn = new File("Autok.dat");
			if (fn.exists()) {
				ObjectInputStream kifile = new ObjectInputStream(new FileInputStream("Autok.dat"));
				try {
					while (true) {
						ma = (SZ7MGG_7) kifile.readObject();
						if (ma.ar > 300) {
							System.out.println("rendszam=" + ma.rendszam);
						}
					}
				} catch (EOFException ee) {
					ma = null;
				}
				kifile.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("Hiba2");
		}
		
	}

}