import javax.swing.JFrame;
import javax.swing.JPanel;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JTextField;
import javax.swing.JLabel;

public class PracticeExam implements ActionListener {
	JFrame frame = new JFrame();
	JPanel panel = new JPanel();
	JButton button = new JButton();
	JLabel label = new JLabel();
	JLabel Sum = new JLabel();
	JTextField text = new JTextField(5);
	int sum;
public static void main(String[] args) {
	
	PracticeExam run = new PracticeExam();

}
PracticeExam(){
	
	frame.add(panel);
	panel.add(text);
	panel.add(button);
	panel.add(label);
	panel.add(Sum);
	label.setText("Sum:");
	Sum.setText(""+sum);
	button.setText("Calculate");
	button.addActionListener(this);
	frame.pack();
	frame.setVisible(true);
	
}
@Override
public void actionPerformed(ActionEvent event) {
	if(event.getSource() == button) {
		String convert = text.getText();
		int converted = Integer.parseInt(convert);
		sum = sum + converted;
		Sum.setText(""+sum);
		frame.pack();
	}
	
}
}
