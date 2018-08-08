import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JTextField;

public class DegreesConverter implements ActionListener{
	JFrame frame = new JFrame();
	JPanel panel = new JPanel();
	JTextField text = new JTextField(5);
	JButton button = new JButton();
	JLabel label = new JLabel();
public static void main(String[] args) {
DegreesConverter degree = new DegreesConverter();
}
DegreesConverter(){ 
frame.setVisible(true);
panel.add(label);
panel.add(text);
panel.add(button);
frame.add(panel);
label.setText("Type an amount you want to convert to Farenheit");
button.setText("Convert to celcuis");
frame.pack();
button.addActionListener(this);
}
@Override
public void actionPerformed(ActionEvent event) {
	if(event.getSource() == button) {
		String convert = text.getText();
		 int conversion = Integer.parseInt(convert);
		 int converted = (conversion - 32)*5/9;
		 JOptionPane.showMessageDialog(null, "That is "+ converted + " degrees Celcius. ");
		
	}
	
}
}