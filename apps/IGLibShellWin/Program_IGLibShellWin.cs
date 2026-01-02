using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Reflection;
using System.IO;
using System.Text;
using System.Xml.Linq;

namespace IGLib.App.ShellWin
{
    public class ProgramIGLibShellWin
    {

        public static void Main(string[] args)
        {
            AssemblyName assemblyName = Assembly.GetEntryAssembly()!.GetName();
            string applicationName = assemblyName.Name!;
            string applicationVerson = assemblyName.Version!.ToString();
            string invokedAs = Path.GetFileName(Environment.GetCommandLineArgs()[0]);
            Console.WriteLine($"\nApplication {applicationName}, v{applicationVerson}...");
            Console.WriteLine($"Invoked as: {invokedAs}");
#if true
            Console.WriteLine("Command-line arguments:");
            if (args == null)
            {
                Console.WriteLine("  null");
            } else if (args.Length == 0)
            {
                Console.WriteLine("  Empty argument list.");
            }
            else
            {
                for (int i = 0; i < args.Length; i++)
                {
                    Console.WriteLine($"  args[{i}] = \"{args[i]}\"");
                }
            }
            Console.WriteLine();
#endif
        
        }


    }


}
